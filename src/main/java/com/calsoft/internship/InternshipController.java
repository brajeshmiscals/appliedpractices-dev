package com.calsoft.internship;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

/**
 * Controller entrypoint for the application
 * @author brajesh.mishra
 **/

@RestController
public class InternshipController {


	/**
	 * Get API to launch homePage
	 * @author brajesh.mishra
	 **/
    @GetMapping("/home")
    public String homePage(){
        return "Welcome Interns! This is Home page";
    }
}
