#!/bin/bash

# -----------------------------------------------------------------------------
# Script Name : run-app.sh
# Description : Builds a Spring Boot project using Maven and runs the JAR file
#
# Preconditions:
#   - Maven must be installed and available in PATH
#   - Java must be installed
#
# Usage:
#   ./run-app.sh
#
# Exit Codes:
#   0 - Successful execution
#   1 - Build failed or JAR not found
# -----------------------------------------------------------------------------

echo "Starting build process..."

# Step 1: Build the project
mvn clean install -DskipTests

# Check if build was successful
if [[ $? -ne 0 ]]; then
  echo "Error: Maven build failed."
  exit 1
fi

echo "Build successful. Searching for JAR..."

# Step 2: Find the JAR file
JAR_FILE=$(find target -maxdepth 1 -name "*.jar" | head -n 1)

# Step 3: Validate JAR existence
if [[ -z "$JAR_FILE" ]]; then
  echo "Error: No JAR found in target/ directory."
  exit 1
fi

echo "Found JAR: $JAR_FILE"

# Step 4: Run the JAR
echo "Running Spring Boot application..."
java -jar "$JAR_FILE"
