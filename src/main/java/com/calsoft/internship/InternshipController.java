package com.calsoft.internship;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class InternshipController {

    @GetMapping("/home")
    public String homePage(){
        return "Welcome Interns! This is Home page";
    }
}
