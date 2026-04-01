#!/bin/bash

#!/bin/bash

# -----------------------------------------------------------------------------
# Script Name : check-string.sh
# Description : This script analyzes a user-provided input string and determines
#               whether it contains digits, special characters, both, or neither.
#
# Usage:
#   ./check-string.sh "your_input_string"
#
# Example:
#   ./check-string.sh "abc123!"
#
# Exit Codes:
#   0 - Successful execution
#   1 - No input provided
# -----------------------------------------------------------------------------

# Validate input
if [[ -z "$1" ]]; then
  echo "Error: No input provided"
  echo "Usage: ./check-string.sh \"your_input_string\""
  exit 1
fi

# Read input string
input="$1"

# Check if string contains both digits and special characters
if [[ "$input" =~ [[:digit:]] && "$input" =~ [^[:alnum:][:space:]] ]]; then
  echo "String has digits and special characters"

# Check if string contains digits only
elif [[ "$input" =~ [[:digit:]] ]]; then
  echo "String has digits"

# Check if string contains special characters only
elif [[ "$input" =~ [^[:alnum:][:space:]] ]]; then
  echo "String contains a special character"

# If none of the above conditions match
else
  echo "String doesn't have digits nor special characters"
fi