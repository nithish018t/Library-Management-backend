package com.libraryportal.auth;

import java.math.BigDecimal;
import java.util.List;

public record DashboardUser(
        String fullName,
        String registrationNo,
        String gender,
        String btechBranch,
        int academicYear,
        int semester,
        long spentSeconds,
        double spentHours,
        int booksTaken,
        String nearestDeadline,
        BigDecimal fineAmount,
        List<ResourceItem> resources,
        List<Double> weeklyHours,
        List<Integer> monthlyBorrows,
        List<BorrowedBookItem> activeBorrowedBooks,
        List<BorrowedBookItem> returnedBorrowedBooks
) {
}
