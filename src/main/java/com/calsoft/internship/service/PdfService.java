package com.calsoft.internship.service;

import org.apache.pdfbox.Loader;
import org.apache.pdfbox.pdmodel.PDDocument;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Service;

import java.io.File;

@Service
public class PdfService {

    @Value("${pdf.password:}")
    private String password;

    @Value("${pdf.path:}")
    private String pdfPath;

    public String readSecurePdf() {
        try (PDDocument document = Loader.loadPDF(new File(pdfPath), password)) {

            int pages = document.getNumberOfPages();
            return "PDF opened successfully. Total pages: " + pages;

        } catch (Exception e) {
            return "Failed to open PDF: " + e.getMessage();
        }
    }
}