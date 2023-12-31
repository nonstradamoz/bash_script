#!/bin/bash

echo "Enter the first file name:"
read file1
echo "Enter the second file name:"
read file2

# Concatenating contents of two files
cat "$file1" "$file2"
