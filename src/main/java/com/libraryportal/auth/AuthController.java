package com.libraryportal.auth;

import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import java.util.Map;

@RestController
@RequestMapping("/api/auth")
public class AuthController {
    private final AuthService authService;

    public AuthController(AuthService authService) {
        this.authService = authService;
    }

    @PostMapping("/register")
    public ResponseEntity<Map<String, String>> register(@RequestBody RegisterRequest request) {
        String message = authService.register(request);
        return ResponseEntity.ok(Map.of("message", message));
    }

    @PostMapping("/login")
    public ResponseEntity<Map<String, Object>> login(@RequestBody LoginRequest request) {
        DashboardUser user = authService.login(request);
        return ResponseEntity.ok(Map.of(
                "message", "Login successful. Welcome to Library Portal.",
                "user", user
        ));
    }

    @PostMapping("/reset-password")
    public ResponseEntity<Map<String, String>> resetPassword(@RequestBody ResetPasswordRequest request) {
        String message = authService.resetPassword(request);
        return ResponseEntity.ok(Map.of("message", message));
    }

    @GetMapping("/dashboard/{registrationNo}")
    public ResponseEntity<Map<String, Object>> dashboard(@PathVariable String registrationNo) {
        DashboardUser user = authService.getDashboardByRegistration(registrationNo);
        return ResponseEntity.ok(Map.of("user", user));
    }

    @PostMapping("/track-time")
    public ResponseEntity<Map<String, String>> trackTime(@RequestBody TrackTimeRequest request) {
        authService.addSpentSeconds(request);
        return ResponseEntity.ok(Map.of("message", "Time tracked"));
    }

    @GetMapping("/books/barcode/{barcode}")
    public ResponseEntity<Map<String, Object>> scanBook(
            @PathVariable String barcode,
            @RequestParam String registrationNo
    ) {
        BookScanInfo info = authService.getBookScanInfo(registrationNo, barcode);
        return ResponseEntity.ok(Map.of("book", info));
    }

    @PostMapping("/books/borrow")
    public ResponseEntity<Map<String, Object>> borrowBook(@RequestBody BookActionRequest request) {
        DashboardUser user = authService.borrowBookByBarcode(request);
        BookScanInfo info = authService.getBookScanInfo(request.registrationNo(), request.barcode());
        return ResponseEntity.ok(Map.of(
                "message", "Book borrowed successfully.",
                "user", user,
                "book", info
        ));
    }

    @PostMapping("/books/return")
    public ResponseEntity<Map<String, Object>> returnBook(@RequestBody BookActionRequest request) {
        DashboardUser user = authService.returnBookByBarcode(request);
        BookScanInfo info = authService.getBookScanInfo(request.registrationNo(), request.barcode());
        return ResponseEntity.ok(Map.of(
                "message", "Book returned successfully.",
                "user", user,
                "book", info
        ));
    }

    @PostMapping("/books/decode-image")
    public ResponseEntity<Map<String, Object>> decodeBarcodeImage(@RequestBody BarcodeDecodeRequest request) {
        String barcode = authService.decodeBarcodeFromImage(request.imageData());
        return ResponseEntity.ok(Map.of("barcode", barcode));
    }
}
