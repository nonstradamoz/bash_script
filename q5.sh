#!/bin/bash

echo "Enter the filename with numbers:"
read filename

if [ ! -f "$filename" ]; then
  echo "File not found!"
  exit 1
fi

min=$(sort -n "$filename" | head -n 1)
max=$(sort -n "$filename" | tail -n 1)

echo "Lowest number: $min"
echo "Highest number: $max"
