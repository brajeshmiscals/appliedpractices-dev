#!/bin/bash

echo "Running Spring Boot JAR..."

JAR_FILE=$(ls target/*.jar | head -n 1)

if [ -z "$JAR_FILE" ]; then
  echo "No JAR found. Build first using mvn clean install -DskipTests"
  exit 1
fi

java -jar "$JAR_FILE"