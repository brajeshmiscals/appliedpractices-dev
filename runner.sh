#!/bin/bash

# -----------------------------------------------------------------------------
# Script Name : run-app.sh
# Description : This script locates and runs a Spring Boot JAR file
#               from the target directory.
#
# Preconditions:
#   - The project must be built using Maven.
#   - A JAR file should exist in the target/ directory.
#
# Usage:
#   ./run-app.sh
#
# Example:
#   ./run-app.sh
#
# Exit Codes:
#   0 - Successful execution
#   1 - JAR file not found
# -----------------------------------------------------------------------------

echo "Running Spring Boot JAR..."

# Find the first JAR file safely (avoids ls errors)
JAR_FILE=$(find target -maxdepth 1 -name "*.jar" | head -n 1)

# Check if JAR file exists
if [[ -z "$JAR_FILE" ]]; then
  echo "Error: No JAR found."
  echo "Build the project first using: mvn clean install -DskipTests"
  exit 1
fi

echo "Found JAR: $JAR_FILE"

# Run the JAR
java -jar "$JAR_FILE"