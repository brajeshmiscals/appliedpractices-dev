#!/bin/bash

/**
 * -----------------------------------------------------------------------------
 * Script Name : check-string.sh
 * Description : This script analyzes a user-provided input string and determines
 *               whether it contains digits, special characters, both, or neither.
 *
 * Input:
 *   - Accepts a single command-line argument (string).
 *
 * Usage:
 *   ./check-string.sh "your_input_string"
 *
 * Logic:
 *   1. Check if the string contains at least one digit AND one special character.
 *   2. If not, check if it contains only digits.
 *   3. If not, check if it contains only special characters.
 *   4. If none of the above, it means the string contains only alphabets/spaces.
 *
 * Definitions:
 *   - Digit             : [0-9]
 *   - Special Character : Any character that is NOT alphanumeric or space
 *
 * Exit Codes:
 *   0 - Successful execution
 * -----------------------------------------------------------------------------
 */

# Read input string from first argument
input=$1

# Check if string contains both digits and special characters
if [[ "$input" =~ [[:digit:]] && "$input" =~ [^[:alnum:][:space:]] ]]; then
  echo "String has digits and special characters"

# Check if string contains only digits
elif [[ "$input" =~ [[:digit:]] ]]; then
  echo "String has digits"

# Check if string contains only special characters
elif [[ "$input" =~ [^[:alnum:][:space:]] ]]; then
   echo "The string contains a special character."

# If none of the above conditions match
else
   echo "String doesn't have digits nor special characters."
fi