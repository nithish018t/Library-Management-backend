MERGE INTO users (registration_no, full_name, password_plain, date_of_birth, gender, btech_branch, academic_year, semester, spent_hours, books_taken, nearest_deadline, fine_amount)
KEY (registration_no)
VALUES ('admin', 'Admin Student', '1234', DATE '2000-01-15', 'Male', 'CSE', 2, 2, 124.5, 6, DATE '2026-03-18', 25.00);

MERGE INTO resources (academic_year, title, resource_type, resource_url, description)
KEY (academic_year, title)
VALUES
(1, 'Engineering Mathematics I', 'Book', 'https://openstax.org/details/books/calculus-volume-1', 'Foundation calculus for first-year BTech.'),
(1, 'C Programming Fundamentals', 'Playlist', 'https://www.youtube.com/results?search_query=c+programming+for+beginners', 'Start with syntax, loops and arrays.'),
(2, 'Data Structures and Algorithms', 'Course', 'https://www.coursera.org/specializations/data-structures-algorithms', 'Core DSA for second-year coding prep.'),
(2, 'Database Management Systems', 'Notes', 'https://www.geeksforgeeks.org/dbms/', 'DBMS concepts for exams and interviews.'),
(3, 'Operating Systems', 'Reference', 'https://pages.cs.wisc.edu/~remzi/OSTEP/', 'Industry-standard OS reference material.'),
(3, 'Computer Networks', 'Playlist', 'https://www.youtube.com/results?search_query=computer+networks+gate+lectures', 'Detailed CN explanations with examples.'),
(4, 'System Design Basics', 'Guide', 'https://github.com/donnemartin/system-design-primer', 'Preparation for placements and projects.'),
(4, 'Interview Prep DSA Sheet', 'Practice', 'https://takeuforward.org/interviews/strivers-sde-sheet-top-coding-interview-problems/', 'Final-year interview-focused problem list.');

MERGE INTO book_catalog (barcode, title, author, isbn, publisher, shelf_location, total_copies, available_copies)
KEY (barcode)
VALUES
('8901234567011', 'Database System Concepts', 'Abraham Silberschatz', '9780078022159', 'McGraw Hill', 'DB-A1', 3, 2),
('8901234567012', 'Clean Code', 'Robert C. Martin', '9780132350884', 'Prentice Hall', 'SE-B2', 4, 3),
('8901234567013', 'Operating System Concepts', 'Abraham Silberschatz', '9781119456339', 'Wiley', 'OS-C3', 2, 2),
('8901234567014', 'Computer Networks', 'Andrew S. Tanenbaum', '9780132126953', 'Pearson', 'CN-D1', 3, 3);

INSERT INTO time_spend_logs (user_id, spent_seconds, logged_at)
SELECT u.id, v.spent_seconds, v.logged_at
FROM users u
CROSS JOIN (
    SELECT 2100 AS spent_seconds, TIMESTAMP '2026-03-10 10:15:00' AS logged_at
    UNION ALL SELECT 1800, TIMESTAMP '2026-03-11 11:20:00'
    UNION ALL SELECT 2400, TIMESTAMP '2026-03-12 13:35:00'
    UNION ALL SELECT 1200, TIMESTAMP '2026-03-13 15:10:00'
    UNION ALL SELECT 2700, TIMESTAMP '2026-03-14 16:40:00'
    UNION ALL SELECT 3000, TIMESTAMP '2026-03-15 17:15:00'
    UNION ALL SELECT 3600, TIMESTAMP '2026-03-16 18:00:00'
) v
WHERE u.registration_no = 'admin'
  AND NOT EXISTS (SELECT 1 FROM time_spend_logs l WHERE l.user_id = u.id);

INSERT INTO borrow_events (user_id, book_barcode, book_title, borrowed_at, due_date, returned_at)
SELECT u.id, v.book_barcode, v.book_title, v.borrowed_at, v.due_date, v.returned_at
FROM users u
CROSS JOIN (
    SELECT '8901234567011' AS book_barcode, 'Database System Concepts' AS book_title, DATE '2026-02-16' AS borrowed_at, DATE '2026-03-14' AS due_date, NULL AS returned_at
    UNION ALL SELECT '8901234567012', 'Clean Code', DATE '2026-02-24', DATE '2026-03-20', NULL
    UNION ALL SELECT '8901234567013', 'Operating System Concepts', DATE '2026-01-20', DATE '2026-02-19', DATE '2026-02-14'
    UNION ALL SELECT '8901234567014', 'Computer Networks', DATE '2025-12-26', DATE '2026-01-30', DATE '2026-01-25'
) v
WHERE u.registration_no = 'admin'
  AND NOT EXISTS (SELECT 1 FROM borrow_events b WHERE b.user_id = u.id);
