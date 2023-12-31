#!/bin/bash

echo "Enter the first number:"
read num1
echo "Enter the second number:"
read num2

while true; do
  echo "1. Addition (+)"
  echo "2. Subtraction (-)"
  echo "3. Multiplication (*)"
  echo "4. Division (/)"
  echo "5. Modulus (%)"
  echo "6. Increment (++)"
  echo "7. Decrement (--)"
  echo "8. Exit"
  
  echo "Enter your choice (1-8):"
  read choice

  case $choice in
    1) echo "Result: $((num1 + num2))";;
    2) echo "Result: $((num1 - num2))";;
    3) echo "Result: $((num1 * num2))";;
    4) if [ $num2 -eq 0 ]; then
         echo "Error: Cannot divide by zero."
       else
         echo "Result: $((num1 / num2))"
       fi;;
    5) echo "Result: $((num1 % num2))";;
    6) ((num1++))
       echo "Result: $num1";;
    7) ((num1--))
       echo "Result: $num1";;
    8) echo "Exiting program."
       exit;;
    *) echo "Invalid choice. Please enter a number between 1 and 8.";;
  esac
done
