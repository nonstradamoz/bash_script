#!/bin/bash

echo "Enter the first string:"
read string1
echo "Enter the second string:"
read string2

# Concatenating strings
result="$string1$string2"

echo "Concatenated string: $result"
echo "Length of the concatenated string: ${#result}"

