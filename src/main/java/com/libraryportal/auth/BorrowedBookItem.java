package com.libraryportal.auth;

public record BorrowedBookItem(
        String bookBarcode,
        String bookTitle,
        String borrowedAt,
        String dueDate,
        String returnedAt,
        String status
) {
}
