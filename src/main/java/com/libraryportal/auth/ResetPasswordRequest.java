package com.libraryportal.auth;

public record ResetPasswordRequest(String registrationNo, String dateOfBirth, String newPassword) {
}
