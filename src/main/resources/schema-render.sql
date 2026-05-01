CREATE TABLE IF NOT EXISTS users (
    id INT AUTO_INCREMENT PRIMARY KEY,
    full_name VARCHAR(120) NOT NULL DEFAULT '',
    registration_no VARCHAR(50) NOT NULL UNIQUE,
    password_plain VARCHAR(100) NOT NULL,
    date_of_birth DATE NOT NULL,
    gender VARCHAR(20) NOT NULL DEFAULT 'Male',
    btech_branch VARCHAR(80) NOT NULL DEFAULT 'CSE',
    academic_year INT NOT NULL DEFAULT 1,
    semester INT NOT NULL DEFAULT 1,
    spent_hours DECIMAL(10,2) NOT NULL DEFAULT 0,
    books_taken INT NOT NULL DEFAULT 0,
    nearest_deadline DATE NULL,
    fine_amount DECIMAL(10,2) NOT NULL DEFAULT 0,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE IF NOT EXISTS resources (
    id INT AUTO_INCREMENT PRIMARY KEY,
    academic_year INT NOT NULL,
    title VARCHAR(200) NOT NULL,
    resource_type VARCHAR(100) NOT NULL,
    resource_url VARCHAR(500) NOT NULL,
    description VARCHAR(400) NOT NULL
);

CREATE TABLE IF NOT EXISTS time_spend_logs (
    id INT AUTO_INCREMENT PRIMARY KEY,
    user_id INT NOT NULL,
    spent_seconds INT NOT NULL,
    logged_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    CONSTRAINT fk_time_user FOREIGN KEY (user_id) REFERENCES users(id) ON DELETE CASCADE
);

CREATE INDEX IF NOT EXISTS idx_time_user_date ON time_spend_logs (user_id, logged_at);

CREATE TABLE IF NOT EXISTS borrow_events (
    id INT AUTO_INCREMENT PRIMARY KEY,
    user_id INT NOT NULL,
    book_barcode VARCHAR(80) NULL,
    book_title VARCHAR(220) NOT NULL,
    borrowed_at DATE NOT NULL,
    due_date DATE NOT NULL,
    returned_at DATE NULL,
    CONSTRAINT fk_borrow_user FOREIGN KEY (user_id) REFERENCES users(id) ON DELETE CASCADE
);

CREATE INDEX IF NOT EXISTS idx_borrow_user_date ON borrow_events (user_id, borrowed_at);
CREATE INDEX IF NOT EXISTS idx_borrow_user_barcode ON borrow_events (user_id, book_barcode);

CREATE TABLE IF NOT EXISTS book_catalog (
    id INT AUTO_INCREMENT PRIMARY KEY,
    barcode VARCHAR(80) NOT NULL UNIQUE,
    title VARCHAR(220) NOT NULL,
    author VARCHAR(150) NOT NULL,
    isbn VARCHAR(32) NOT NULL,
    publisher VARCHAR(120) NOT NULL,
    shelf_location VARCHAR(60) NOT NULL,
    total_copies INT NOT NULL DEFAULT 1,
    available_copies INT NOT NULL DEFAULT 1,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
