package com.libraryportal.auth;

import com.google.zxing.BinaryBitmap;
import com.google.zxing.BarcodeFormat;
import com.google.zxing.DecodeHintType;
import com.google.zxing.LuminanceSource;
import com.google.zxing.MultiFormatReader;
import com.google.zxing.NotFoundException;
import com.google.zxing.Result;
import com.google.zxing.client.j2se.BufferedImageLuminanceSource;
import com.google.zxing.common.GlobalHistogramBinarizer;
import com.google.zxing.common.HybridBinarizer;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import javax.imageio.ImageIO;
import java.awt.image.BufferedImage;
import java.io.ByteArrayInputStream;
import java.math.BigDecimal;
import java.sql.Date;
import java.time.LocalDate;
import java.time.YearMonth;
import java.util.Base64;
import java.util.EnumMap;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Service
public class AuthService {
    private final JdbcTemplate jdbcTemplate;

    public AuthService(JdbcTemplate jdbcTemplate) {
        this.jdbcTemplate = jdbcTemplate;
    }

    public String register(RegisterRequest request) {
        String fullName = clean(request.fullName());
        String registrationNo = clean(request.registrationNo());
        String password = clean(request.password());
        LocalDate dob = parseDate(request.dateOfBirth());
        String gender = normalizeGender(request.gender());
        String btechBranch = clean(request.btechBranch());
        Integer academicYear = request.academicYear();
        Integer semester = request.semester();

        if (fullName.isEmpty() || registrationNo.isEmpty() || password.isEmpty() || dob == null || gender.isEmpty() || btechBranch.isEmpty() || academicYear == null || semester == null) {
            throw new ApiException("Please provide all required details.");
        }
        if (password.length() < 4) {
            throw new ApiException("Password must be at least 4 characters.");
        }
        if (academicYear < 1 || academicYear > 4) {
            throw new ApiException("Academic year must be between 1 and 4.");
        }
        if (semester < 1 || semester > 2) {
            throw new ApiException("Each academic year has only semester 1 or 2.");
        }

        Integer existing = jdbcTemplate.queryForObject(
                "SELECT COUNT(*) FROM users WHERE registration_no = ?",
                Integer.class,
                registrationNo
        );
        if (existing != null && existing > 0) {
            throw new ApiException("Registration number already exists.");
        }

        jdbcTemplate.update(
                """
                INSERT INTO users (
                    full_name, registration_no, password_plain, date_of_birth,
                    gender, btech_branch, academic_year, semester, spent_hours,
                    books_taken, nearest_deadline, fine_amount
                ) VALUES (?, ?, ?, ?, ?, ?, ?, ?, 0, 0, NULL, 0)
                """,
                fullName,
                registrationNo,
                password,
                Date.valueOf(dob),
                gender,
                btechBranch,
                academicYear,
                semester
        );
        return "Account created successfully.";
    }

    public DashboardUser login(LoginRequest request) {
        String registrationNo = clean(request.registrationNo());
        String password = clean(request.password());

        if (registrationNo.isEmpty() || password.isEmpty()) {
            throw new ApiException("Please enter registration number and password.");
        }

        List<Integer> userIds = jdbcTemplate.query(
                "SELECT id FROM users WHERE registration_no = ? AND password_plain = ?",
                (rs, rowNum) -> rs.getInt("id"),
                registrationNo,
                password
        );

        if (userIds.isEmpty()) {
            throw new ApiException("Invalid registration number or password.");
        }

        return getDashboardByUserId(userIds.getFirst());
    }

    public String resetPassword(ResetPasswordRequest request) {
        String registrationNo = clean(request.registrationNo());
        String newPassword = clean(request.newPassword());
        LocalDate dob = parseDate(request.dateOfBirth());

        if (registrationNo.isEmpty() || newPassword.isEmpty() || dob == null) {
            throw new ApiException("Please fill all fields.");
        }
        if (newPassword.length() < 4) {
            throw new ApiException("New password must be at least 4 characters.");
        }

        Integer count = jdbcTemplate.queryForObject(
                "SELECT COUNT(*) FROM users WHERE registration_no = ? AND date_of_birth = ?",
                Integer.class,
                registrationNo,
                Date.valueOf(dob)
        );
        if (count == null || count == 0) {
            throw new ApiException("Registration number or date of birth is incorrect.");
        }

        jdbcTemplate.update(
                "UPDATE users SET password_plain = ? WHERE registration_no = ?",
                newPassword,
                registrationNo
        );
        return "Password changed successfully.";
    }

    public DashboardUser getDashboardByRegistration(String registrationNoRaw) {
        String registrationNo = clean(registrationNoRaw);
        if (registrationNo.isEmpty()) {
            throw new ApiException("Registration number is required.");
        }

        List<Integer> userIds = jdbcTemplate.query(
                "SELECT id FROM users WHERE registration_no = ?",
                (rs, rowNum) -> rs.getInt("id"),
                registrationNo
        );
        if (userIds.isEmpty()) {
            throw new ApiException("User not found.");
        }
        return getDashboardByUserId(userIds.getFirst());
    }

    public void addSpentSeconds(TrackTimeRequest request) {
        String registrationNo = clean(request.registrationNo());
        Integer seconds = request.secondsSpent();
        if (registrationNo.isEmpty() || seconds == null || seconds <= 0) {
            return;
        }

        List<Integer> userIds = jdbcTemplate.query(
                "SELECT id FROM users WHERE registration_no = ?",
                (rs, rowNum) -> rs.getInt("id"),
                registrationNo
        );
        if (userIds.isEmpty()) {
            return;
        }

        int userId = userIds.getFirst();
        double addHours = seconds / 3600.0;
        jdbcTemplate.update("UPDATE users SET spent_hours = spent_hours + ? WHERE id = ?", addHours, userId);
        jdbcTemplate.update("INSERT INTO time_spend_logs (user_id, spent_seconds) VALUES (?, ?)", userId, seconds);
    }

    public BookScanInfo getBookScanInfo(String registrationNoRaw, String barcodeRaw) {
        String registrationNo = clean(registrationNoRaw);
        String barcode = clean(barcodeRaw);
        if (registrationNo.isEmpty() || barcode.isEmpty()) {
            throw new ApiException("Registration number and barcode are required.");
        }

        int userId = getUserIdByRegistration(registrationNo);
        List<Map<String, Object>> bookRows = jdbcTemplate.queryForList(
                """
                SELECT barcode, title, author, isbn, publisher, shelf_location, total_copies, available_copies
                FROM book_catalog
                WHERE barcode = ?
                """,
                barcode
        );
        if (bookRows.isEmpty()) {
            throw new ApiException("No book found for this barcode.");
        }

        Map<String, Object> book = bookRows.getFirst();
        List<Map<String, Object>> activeRows = jdbcTemplate.queryForList(
                """
                SELECT borrowed_at, due_date
                FROM borrow_events
                WHERE user_id = ? AND book_barcode = ? AND returned_at IS NULL
                ORDER BY borrowed_at DESC
                LIMIT 1
                """,
                userId,
                barcode
        );

        boolean borrowedByCurrentUser = !activeRows.isEmpty();
        Date borrowedAt = borrowedByCurrentUser ? (Date) activeRows.getFirst().get("borrowed_at") : null;
        Date dueDate = borrowedByCurrentUser ? (Date) activeRows.getFirst().get("due_date") : null;
        int available = ((Number) book.get("available_copies")).intValue();
        String suggestedAction = borrowedByCurrentUser ? "RETURN" : (available > 0 ? "BORROW" : "UNAVAILABLE");

        return new BookScanInfo(
                (String) book.get("barcode"),
                (String) book.get("title"),
                (String) book.get("author"),
                (String) book.get("isbn"),
                (String) book.get("publisher"),
                (String) book.get("shelf_location"),
                ((Number) book.get("total_copies")).intValue(),
                available,
                borrowedByCurrentUser,
                borrowedAt == null ? "-" : borrowedAt.toLocalDate().toString(),
                dueDate == null ? "-" : dueDate.toLocalDate().toString(),
                suggestedAction
        );
    }

    public String decodeBarcodeFromImage(String imageDataRaw) {
        String imageData = clean(imageDataRaw);
        if (imageData.isEmpty()) {
            throw new ApiException("Image data is required for barcode decode.");
        }
        try {
            String base64 = imageData;
            int comma = imageData.indexOf(',');
            if (comma >= 0) {
                base64 = imageData.substring(comma + 1);
            }
            byte[] bytes = Base64.getDecoder().decode(base64);
            BufferedImage image = ImageIO.read(new ByteArrayInputStream(bytes));
            if (image == null) {
                throw new ApiException("Invalid image payload.");
            }
            LuminanceSource source = new BufferedImageLuminanceSource(image);
            Result result = decodeWithStrategies(source);
            String text = clean(result.getText());
            if (text.isEmpty()) {
                throw new ApiException("No barcode detected.");
            }
            return text;
        } catch (NotFoundException ex) {
            throw new ApiException("No barcode detected.");
        } catch (IllegalArgumentException ex) {
            throw new ApiException("Invalid image encoding.");
        } catch (ApiException ex) {
            throw ex;
        } catch (Exception ex) {
            throw new ApiException("Unable to decode barcode from image.");
        }
    }

    private Result decodeWithStrategies(LuminanceSource source) throws NotFoundException {
        Map<DecodeHintType, Object> hints = new EnumMap<>(DecodeHintType.class);
        hints.put(DecodeHintType.TRY_HARDER, Boolean.TRUE);
        hints.put(
                DecodeHintType.POSSIBLE_FORMATS,
                List.of(
                        BarcodeFormat.EAN_13,
                        BarcodeFormat.EAN_8,
                        BarcodeFormat.UPC_A,
                        BarcodeFormat.UPC_E,
                        BarcodeFormat.CODE_128,
                        BarcodeFormat.CODE_39
                )
        );

        MultiFormatReader reader = new MultiFormatReader();
        try {
            return reader.decode(new BinaryBitmap(new HybridBinarizer(source)), hints);
        } catch (NotFoundException ignore) {
        } finally {
            reader.reset();
        }

        try {
            return reader.decode(new BinaryBitmap(new GlobalHistogramBinarizer(source)), hints);
        } catch (NotFoundException ignore) {
        } finally {
            reader.reset();
        }

        LuminanceSource inverted = source.invert();
        try {
            return reader.decode(new BinaryBitmap(new HybridBinarizer(inverted)), hints);
        } catch (NotFoundException ignore) {
        } finally {
            reader.reset();
        }

        try {
            return reader.decode(new BinaryBitmap(new GlobalHistogramBinarizer(inverted)), hints);
        } finally {
            reader.reset();
        }
    }

    @Transactional
    public DashboardUser borrowBookByBarcode(BookActionRequest request) {
        String registrationNo = clean(request.registrationNo());
        String barcode = clean(request.barcode());
        if (registrationNo.isEmpty() || barcode.isEmpty()) {
            throw new ApiException("Registration number and barcode are required.");
        }
        int userId = getUserIdByRegistration(registrationNo);

        List<Map<String, Object>> bookRows = jdbcTemplate.queryForList(
                "SELECT title, available_copies FROM book_catalog WHERE barcode = ?",
                barcode
        );
        if (bookRows.isEmpty()) {
            throw new ApiException("Book not found for this barcode.");
        }
        Map<String, Object> book = bookRows.getFirst();
        int available = ((Number) book.get("available_copies")).intValue();
        if (available <= 0) {
            throw new ApiException("No copies available for borrowing.");
        }

        Integer activeCount = jdbcTemplate.queryForObject(
                "SELECT COUNT(*) FROM borrow_events WHERE user_id = ? AND book_barcode = ? AND returned_at IS NULL",
                Integer.class,
                userId,
                barcode
        );
        if (activeCount != null && activeCount > 0) {
            throw new ApiException("You already borrowed this book. Please return it first.");
        }

        LocalDate borrowedAt = LocalDate.now();
        LocalDate dueDate = borrowedAt.plusDays(14);
        jdbcTemplate.update(
                """
                INSERT INTO borrow_events (user_id, book_barcode, book_title, borrowed_at, due_date, returned_at)
                VALUES (?, ?, ?, ?, ?, NULL)
                """,
                userId,
                barcode,
                (String) book.get("title"),
                Date.valueOf(borrowedAt),
                Date.valueOf(dueDate)
        );

        jdbcTemplate.update(
                "UPDATE book_catalog SET available_copies = GREATEST(available_copies - 1, 0) WHERE barcode = ?",
                barcode
        );
        return getDashboardByUserId(userId);
    }

    @Transactional
    public DashboardUser returnBookByBarcode(BookActionRequest request) {
        String registrationNo = clean(request.registrationNo());
        String barcode = clean(request.barcode());
        if (registrationNo.isEmpty() || barcode.isEmpty()) {
            throw new ApiException("Registration number and barcode are required.");
        }
        int userId = getUserIdByRegistration(registrationNo);

        List<Integer> eventIds = jdbcTemplate.query(
                """
                SELECT id
                FROM borrow_events
                WHERE user_id = ? AND book_barcode = ? AND returned_at IS NULL
                ORDER BY borrowed_at DESC
                LIMIT 1
                """,
                (rs, rowNum) -> rs.getInt("id"),
                userId,
                barcode
        );
        if (eventIds.isEmpty()) {
            throw new ApiException("This book is not currently borrowed under your account.");
        }

        jdbcTemplate.update(
                "UPDATE borrow_events SET returned_at = ? WHERE id = ?",
                Date.valueOf(LocalDate.now()),
                eventIds.getFirst()
        );

        jdbcTemplate.update(
                """
                UPDATE book_catalog
                SET available_copies = LEAST(available_copies + 1, total_copies)
                WHERE barcode = ?
                """,
                barcode
        );
        return getDashboardByUserId(userId);
    }

    private String clean(String value) {
        return value == null ? "" : value.trim();
    }

    private int getUserIdByRegistration(String registrationNo) {
        List<Integer> userIds = jdbcTemplate.query(
                "SELECT id FROM users WHERE registration_no = ?",
                (rs, rowNum) -> rs.getInt("id"),
                registrationNo
        );
        if (userIds.isEmpty()) {
            throw new ApiException("User not found.");
        }
        return userIds.getFirst();
    }

    private List<ResourceItem> fetchResourcesForYear(int academicYear) {
        return jdbcTemplate.query(
                """
                SELECT title, resource_type, resource_url, description
                FROM resources
                WHERE academic_year = ?
                ORDER BY id ASC
                """,
                (rs, rowNum) -> new ResourceItem(
                        rs.getString("title"),
                        rs.getString("resource_type"),
                        rs.getString("resource_url"),
                        rs.getString("description")
                ),
                academicYear
        );
    }

    private DashboardUser getDashboardByUserId(int userId) {
        Map<String, Object> user = jdbcTemplate.queryForMap(
                """
                SELECT full_name, registration_no, gender, btech_branch, academic_year, semester, spent_hours
                FROM users
                WHERE id = ?
                """,
                userId
        );

        int academicYear = ((Number) user.get("academic_year")).intValue();
        List<ResourceItem> resources = fetchResourcesForYear(academicYear);
        long spentSeconds = fetchTotalSpentSeconds(userId, user.get("spent_hours"));
        double spentHours = spentSeconds / 3600.0;
        int booksTaken = fetchActiveBooksTaken(userId);
        Date nearestDeadline = fetchNearestDeadline(userId);
        BigDecimal fineAmount = fetchCurrentFine(userId);
        List<Double> weeklyHours = fetchWeeklyHours(userId);
        List<Integer> monthlyBorrows = fetchMonthlyBorrows(userId);
        List<BorrowedBookItem> activeBorrowedBooks = fetchBorrowedBooks(userId, true);
        List<BorrowedBookItem> returnedBorrowedBooks = fetchBorrowedBooks(userId, false);

        return new DashboardUser(
                (String) user.get("full_name"),
                (String) user.get("registration_no"),
                normalizeGender((String) user.get("gender")),
                (String) user.get("btech_branch"),
                academicYear,
                ((Number) user.get("semester")).intValue(),
                spentSeconds,
                spentHours,
                booksTaken,
                nearestDeadline == null ? "No pending deadline" : nearestDeadline.toLocalDate().toString(),
                fineAmount,
                resources,
                weeklyHours,
                monthlyBorrows,
                activeBorrowedBooks,
                returnedBorrowedBooks
        );
    }

    private long fetchTotalSpentSeconds(int userId, Object fallbackHours) {
        Long total = jdbcTemplate.queryForObject(
                "SELECT COALESCE(SUM(spent_seconds), 0) FROM time_spend_logs WHERE user_id = ?",
                Long.class,
                userId
        );
        if (total != null && total > 0) {
            return total;
        }
        if (fallbackHours == null) {
            return 0L;
        }
        double fallback = ((Number) fallbackHours).doubleValue();
        return Math.max(0L, Math.round(fallback * 3600.0));
    }

    private int fetchActiveBooksTaken(int userId) {
        Integer count = jdbcTemplate.queryForObject(
                "SELECT COUNT(*) FROM borrow_events WHERE user_id = ? AND returned_at IS NULL",
                Integer.class,
                userId
        );
        return count == null ? 0 : count;
    }

    private Date fetchNearestDeadline(int userId) {
        return jdbcTemplate.queryForObject(
                "SELECT MIN(due_date) FROM borrow_events WHERE user_id = ? AND returned_at IS NULL",
                Date.class,
                userId
        );
    }

    private BigDecimal fetchCurrentFine(int userId) {
        BigDecimal fine = jdbcTemplate.queryForObject(
                """
                SELECT COALESCE(SUM(
                    CASE
                        WHEN returned_at IS NULL AND due_date < CURDATE() THEN DATEDIFF(CURDATE(), due_date) * 2
                        ELSE 0
                    END
                ), 0)
                FROM borrow_events
                WHERE user_id = ?
                """,
                BigDecimal.class,
                userId
        );
        return fine == null ? BigDecimal.ZERO : fine;
    }

    private List<Double> fetchWeeklyHours(int userId) {
        List<Map<String, Object>> rows = jdbcTemplate.queryForList(
                """
                SELECT DATE(logged_at) AS day_key, COALESCE(SUM(spent_seconds), 0) AS sec_sum
                FROM time_spend_logs
                WHERE user_id = ? AND logged_at >= DATE_SUB(CURDATE(), INTERVAL 6 DAY)
                GROUP BY DATE(logged_at)
                """,
                userId
        );

        Map<LocalDate, Double> byDate = new HashMap<>();
        for (Map<String, Object> row : rows) {
            Date day = (Date) row.get("day_key");
            Number sec = (Number) row.get("sec_sum");
            if (day != null && sec != null) {
                byDate.put(day.toLocalDate(), sec.doubleValue() / 3600.0);
            }
        }

        List<Double> result = new java.util.ArrayList<>();
        for (int i = 6; i >= 0; i--) {
            LocalDate d = LocalDate.now().minusDays(i);
            result.add(Math.round(byDate.getOrDefault(d, 0.0) * 100.0) / 100.0);
        }
        return result;
    }

    private List<Integer> fetchMonthlyBorrows(int userId) {
        LocalDate start = LocalDate.now().minusMonths(5).withDayOfMonth(1);
        List<Map<String, Object>> rows = jdbcTemplate.queryForList(
                """
                SELECT DATE_FORMAT(borrowed_at, '%Y-%m') AS month_key, COUNT(*) AS cnt
                FROM borrow_events
                WHERE user_id = ? AND borrowed_at >= ?
                GROUP BY DATE_FORMAT(borrowed_at, '%Y-%m')
                """,
                userId,
                Date.valueOf(start)
        );

        Map<String, Integer> byMonth = new HashMap<>();
        for (Map<String, Object> row : rows) {
            String month = (String) row.get("month_key");
            Number cnt = (Number) row.get("cnt");
            if (month != null && cnt != null) {
                byMonth.put(month, cnt.intValue());
            }
        }

        List<Integer> result = new java.util.ArrayList<>();
        for (int i = 5; i >= 0; i--) {
            String key = YearMonth.now().minusMonths(i).toString();
            result.add(byMonth.getOrDefault(key, 0));
        }
        return result;
    }

    private List<BorrowedBookItem> fetchBorrowedBooks(int userId, boolean activeOnly) {
        String sql = activeOnly
                ? """
                SELECT book_barcode, book_title, borrowed_at, due_date, returned_at
                FROM borrow_events
                WHERE user_id = ? AND returned_at IS NULL
                ORDER BY due_date ASC
                """
                : """
                SELECT book_barcode, book_title, borrowed_at, due_date, returned_at
                FROM borrow_events
                WHERE user_id = ? AND returned_at IS NOT NULL
                ORDER BY returned_at DESC
                LIMIT 10
                """;

        return jdbcTemplate.query(
                sql,
                (rs, rowNum) -> {
                    Date borrowedAt = rs.getDate("borrowed_at");
                    Date dueDate = rs.getDate("due_date");
                    Date returnedAt = rs.getDate("returned_at");
                    String status = returnedAt == null
                            ? (dueDate != null && dueDate.toLocalDate().isBefore(LocalDate.now()) ? "Overdue" : "On Time")
                            : "Returned";
                    return new BorrowedBookItem(
                            rs.getString("book_barcode") == null ? "-" : rs.getString("book_barcode"),
                            rs.getString("book_title"),
                            borrowedAt == null ? "-" : borrowedAt.toLocalDate().toString(),
                            dueDate == null ? "-" : dueDate.toLocalDate().toString(),
                            returnedAt == null ? "-" : returnedAt.toLocalDate().toString(),
                            status
                    );
                },
                userId
        );
    }

    private LocalDate parseDate(String value) {
        try {
            return value == null || value.isBlank() ? null : LocalDate.parse(value);
        } catch (Exception ex) {
            return null;
        }
    }

    private String normalizeGender(String value) {
        String cleaned = clean(value);
        if (cleaned.equalsIgnoreCase("male")) {
            return "Male";
        }
        if (cleaned.equalsIgnoreCase("female")) {
            return "Female";
        }
        return "";
    }
}
