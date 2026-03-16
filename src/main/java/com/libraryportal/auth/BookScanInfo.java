package com.libraryportal.auth;

public record BookScanInfo(
        String barcode,
        String title,
        String author,
        String isbn,
        String publisher,
        String shelfLocation,
        int totalCopies,
        int availableCopies,
        boolean borrowedByCurrentUser,
        String borrowedAt,
        String dueDate,
        String suggestedAction
) {
}
