#!/bin/bash

/**
 * -----------------------------------------------------------------------------
 * Script Name : run-app.sh
 * Description : This script locates and runs a Spring Boot JAR file
 *               from the target directory.
 *
 * Preconditions:
 *   - The project must be built using Maven.
 *   - A JAR file should exist in the target/ directory.
 *
 * Usage:
 *   ./run-app.sh
 *
 * Steps:
 *   1. Print a message indicating execution start.
 *   2. Locate the first JAR file inside the target directory.
 *   3. If no JAR is found, prompt the user to build the project.
 *   4. If found, execute the JAR using Java.
 *
 * Exit Codes:
 *   0 - Successful execution
 *   1 - JAR file not found
 * -----------------------------------------------------------------------------
 */

echo "Running Spring Boot JAR..."

# Locate the first JAR file inside the target directory
JAR_FILE=$(ls target/*.jar | head -n 1)

# Check if JAR file exists
if [ -z "$JAR_FILE" ]; then
  echo "No JAR found. Build first using mvn clean install -DskipTests"
  exit 1
fi

# Execute the JAR file
java -jar "$JAR_FILE"