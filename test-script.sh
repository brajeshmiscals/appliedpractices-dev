#!/bin/bash

## script to check numbers in a user input string

input=$1
if [[ "$input" =~ [[:digit:]] && "$input" =~ [^[:alnum:][:space:]] ]]; then
  echo "String has digits and special characters"
elif [[ "$input" =~ [[:digit:]] ]]; then
  echo "String has digits"
elif [[ "$input" =~ [^[:alnum:][:space:]] ]]; then
   echo "The string contains a special character."
else
   echo "String doesn't have digits nor special characters."
fi
