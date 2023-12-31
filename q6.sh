#!/bin/bash

echo "Enter the value of n (number of elements):"
read n

# Initialize an array
declare -a numbers

echo "Enter $n numbers, one per line:"
for ((i = 0; i < n; i++)); do
  read numbers[i]
done

# Calculate the sum of numbers
sum=0
for ((i = 0; i < n; i++)); do
  sum=$((sum + numbers[i]))
done

# Calculate the average
average=$(echo "scale=2; $sum / $n" | bc)

echo "Numbers entered: ${numbers[@]}"
echo "Average: $average"
