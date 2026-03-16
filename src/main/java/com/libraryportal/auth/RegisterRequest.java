package com.libraryportal.auth;

public record RegisterRequest(
        String fullName,
        String registrationNo,
        String password,
        String dateOfBirth,
        String gender,
        String btechBranch,
        Integer academicYear,
        Integer semester
) {
}
