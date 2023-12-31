#!/bin/bash

echo "Enter the number of rows:"
read rows

for ((i = 1; i <= rows; i++)); do
  # Print spaces
  for ((s = 1; s <= rows - i; s++)); do
    echo -n " "
  done

  # Print stars
  for ((j = 1; j <= 2 * i - 1; j++)); do
    echo -n "*"
  done

  echo
done
