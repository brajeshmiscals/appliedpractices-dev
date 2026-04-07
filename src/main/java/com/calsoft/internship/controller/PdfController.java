package com.calsoft.internship.controller;


import com.calsoft.internship.service.PdfService;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class PdfController {

    private final PdfService pdfService;

    public PdfController(PdfService pdfService) {
        this.pdfService = pdfService;
    }

    @GetMapping("/read-pdf")
    public String readPdf() {
        return pdfService.readSecurePdf();
    }
}