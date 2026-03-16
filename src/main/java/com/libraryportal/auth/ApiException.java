package com.libraryportal.auth;

public class ApiException extends RuntimeException {
    public ApiException(String message) {
        super(message);
    }
}
