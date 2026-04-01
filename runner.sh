#!/bin/bash

# -----------------------------------------------------------------------------
# Script Name : run-app.sh
# Description : Builds a Spring Boot project, runs the JAR, and stops it
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

# Step 4: Run the JAR in background
echo "Starting Spring Boot application..."
java -jar "$JAR_FILE" > app.log 2>&1 &

APP_PID=$!
echo "Application started with PID: $APP_PID"

# Step 5: Let it run for some time
sleep 30

# Step 6: Kill the application
echo "Stopping application..."
kill $APP_PID

# Optional: wait for process to terminate
wait $APP_PID 2>/dev/null

echo "Application stopped successfully"
