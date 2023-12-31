#!/bin/bash

echo "Enter the file name:"
read filename
echo "Enter the number to search:"
read number

# Searching for lines containing the number
grep "$number" "$filename"
