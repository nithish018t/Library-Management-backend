INSERT INTO users (full_name, registration_no, password_plain, date_of_birth, gender, btech_branch, academic_year, semester, spent_hours, books_taken, nearest_deadline, fine_amount)
VALUES ('Admin Student', 'admin', '1234', '2000-01-15', 'Male', 'CSE', 2, 2, 124.5, 6, '2026-03-18', 25.00)
ON DUPLICATE KEY UPDATE
full_name = VALUES(full_name),
password_plain = VALUES(password_plain),
date_of_birth = VALUES(date_of_birth),
gender = VALUES(gender),
btech_branch = VALUES(btech_branch),
academic_year = VALUES(academic_year),
semester = VALUES(semester),
spent_hours = VALUES(spent_hours),
books_taken = VALUES(books_taken),
nearest_deadline = VALUES(nearest_deadline),
fine_amount = VALUES(fine_amount);

INSERT INTO resources (academic_year, title, resource_type, resource_url, description)
SELECT * FROM (
    SELECT 1 AS academic_year, 'Engineering Mathematics I' AS title, 'Book' AS resource_type, 'https://openstax.org/details/books/calculus-volume-1' AS resource_url, 'Foundation calculus for first-year BTech.' AS description
    UNION ALL SELECT 1, 'C Programming Fundamentals', 'Playlist', 'https://www.youtube.com/results?search_query=c+programming+for+beginners', 'Start with syntax, loops and arrays.'
    UNION ALL SELECT 2, 'Data Structures and Algorithms', 'Course', 'https://www.coursera.org/specializations/data-structures-algorithms', 'Core DSA for second-year coding prep.'
    UNION ALL SELECT 2, 'Database Management Systems', 'Notes', 'https://www.geeksforgeeks.org/dbms/', 'DBMS concepts for exams and interviews.'
    UNION ALL SELECT 3, 'Operating Systems', 'Reference', 'https://pages.cs.wisc.edu/~remzi/OSTEP/', 'Industry-standard OS reference material.'
    UNION ALL SELECT 3, 'Computer Networks', 'Playlist', 'https://www.youtube.com/results?search_query=computer+networks+gate+lectures', 'Detailed CN explanations with examples.'
    UNION ALL SELECT 4, 'System Design Basics', 'Guide', 'https://github.com/donnemartin/system-design-primer', 'Preparation for placements and projects.'
    UNION ALL SELECT 4, 'Interview Prep DSA Sheet', 'Practice', 'https://takeuforward.org/interviews/strivers-sde-sheet-top-coding-interview-problems/', 'Final-year interview-focused problem list.'
) AS seed_data
WHERE NOT EXISTS (
    SELECT 1 FROM resources r
    WHERE r.academic_year = seed_data.academic_year
      AND r.title = seed_data.title
);

INSERT INTO book_catalog (barcode, title, author, isbn, publisher, shelf_location, total_copies, available_copies)
SELECT * FROM (
    SELECT '8901234567011' AS barcode, 'Database System Concepts' AS title, 'Abraham Silberschatz' AS author, '9780078022159' AS isbn, 'McGraw Hill' AS publisher, 'DB-A1' AS shelf_location, 3 AS total_copies, 2 AS available_copies
    UNION ALL SELECT '8901234567012', 'Clean Code', 'Robert C. Martin', '9780132350884', 'Prentice Hall', 'SE-B2', 4, 3
    UNION ALL SELECT '8901234567013', 'Operating System Concepts', 'Abraham Silberschatz', '9781119456339', 'Wiley', 'OS-C3', 2, 2
    UNION ALL SELECT '8901234567014', 'Computer Networks', 'Andrew S. Tanenbaum', '9780132126953', 'Pearson', 'CN-D1', 3, 3
) AS seed_data
WHERE NOT EXISTS (
    SELECT 1 FROM book_catalog b WHERE b.barcode = seed_data.barcode
);

INSERT INTO time_spend_logs (user_id, spent_seconds, logged_at)
SELECT u.id, seed.spent_seconds, seed.logged_at
FROM users u
JOIN (
    SELECT 2100 AS spent_seconds, TIMESTAMP(DATE_SUB(CURDATE(), INTERVAL 6 DAY), '10:15:00') AS logged_at
    UNION ALL SELECT 1800, TIMESTAMP(DATE_SUB(CURDATE(), INTERVAL 5 DAY), '11:20:00')
    UNION ALL SELECT 2400, TIMESTAMP(DATE_SUB(CURDATE(), INTERVAL 4 DAY), '13:35:00')
    UNION ALL SELECT 1200, TIMESTAMP(DATE_SUB(CURDATE(), INTERVAL 3 DAY), '15:10:00')
    UNION ALL SELECT 2700, TIMESTAMP(DATE_SUB(CURDATE(), INTERVAL 2 DAY), '16:40:00')
    UNION ALL SELECT 3000, TIMESTAMP(DATE_SUB(CURDATE(), INTERVAL 1 DAY), '17:15:00')
    UNION ALL SELECT 3600, TIMESTAMP(CURDATE(), '18:00:00')
) AS seed
WHERE u.registration_no = 'admin'
  AND NOT EXISTS (SELECT 1 FROM time_spend_logs l WHERE l.user_id = u.id);

INSERT INTO borrow_events (user_id, book_barcode, book_title, borrowed_at, due_date, returned_at)
SELECT u.id, seed.book_barcode, seed.book_title, seed.borrowed_at, seed.due_date, seed.returned_at
FROM users u
JOIN (
    SELECT '8901234567011' AS book_barcode, 'Database System Concepts' AS book_title, DATE_SUB(CURDATE(), INTERVAL 28 DAY) AS borrowed_at, DATE_SUB(CURDATE(), INTERVAL 2 DAY) AS due_date, NULL AS returned_at
    UNION ALL SELECT '8901234567012', 'Clean Code', DATE_SUB(CURDATE(), INTERVAL 20 DAY), DATE_ADD(CURDATE(), INTERVAL 4 DAY), NULL
    UNION ALL SELECT '8901234567013', 'Operating System Concepts', DATE_SUB(CURDATE(), INTERVAL 55 DAY), DATE_SUB(CURDATE(), INTERVAL 25 DAY), DATE_SUB(CURDATE(), INTERVAL 30 DAY)
    UNION ALL SELECT '8901234567014', 'Computer Networks', DATE_SUB(CURDATE(), INTERVAL 80 DAY), DATE_SUB(CURDATE(), INTERVAL 45 DAY), DATE_SUB(CURDATE(), INTERVAL 50 DAY)
) AS seed
WHERE u.registration_no = 'admin'
  AND NOT EXISTS (SELECT 1 FROM borrow_events b WHERE b.user_id = u.id);

UPDATE borrow_events
SET book_barcode = CASE book_title
    WHEN 'Database System Concepts' THEN '8901234567011'
    WHEN 'Clean Code' THEN '8901234567012'
    WHEN 'Operating System Concepts' THEN '8901234567013'
    WHEN 'Computer Networks' THEN '8901234567014'
    ELSE book_barcode
END
WHERE book_barcode IS NULL;
