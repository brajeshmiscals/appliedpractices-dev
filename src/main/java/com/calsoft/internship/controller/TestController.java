package com.calsoft.internship.controller;

import com.calsoft.internship.config.PdfConfig;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class TestController {

    private final PdfConfig pdfConfig;

    public TestController(PdfConfig pdfConfig) {
        this.pdfConfig = pdfConfig;
    }

    @GetMapping("/vault")
    public String getVaultData() {
        return "Password: " + pdfConfig.getPassword() +
               ", Path: " + pdfConfig.getPath();
    }
}