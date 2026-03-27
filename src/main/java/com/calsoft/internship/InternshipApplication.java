package com.calsoft.internship;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

/**
 * Main entrypoint for the application
 * @author brajesh.mishra
 **/

@SpringBootApplication
public class InternshipApplication {

    private static final Logger logger = LoggerFactory.getLogger(InternshipApplication.class);
	public static void main(String[] args) {

        SpringApplication.run(InternshipApplication.class, args);
        logger.info("Hello Interns! Welcome to main");
	}

}
