#!/bin/bash

# Function to read a matrix from the user
read_matrix() {
  echo "Enter the number of rows for the matrix:"
  read rows
  echo "Enter the number of columns for the matrix:"
  read cols

  echo "Enter the elements of the matrix (row-wise):"
  for ((i = 0; i < rows; i++)); do
    for ((j = 0; j < cols; j++)); do
      index=$((i * cols + j))
      read matrix[$index]
    done
  done
}

# Function to print a matrix
print_matrix() {
  for ((i = 0; i < rows; i++)); do
    for ((j = 0; j < cols; j++)); do
      index=$((i * cols + j))
      echo -n "${result[$index]} "
    done
    echo
  done
}

echo "Enter details for the first matrix:"
read_matrix
matrix1=("${matrix[@]}")  # Copy the first matrix

echo "Enter details for the second matrix:"
read_matrix
matrix2=("${matrix[@]}")  # Copy the second matrix

# Check if matrices can be added
if [ "${#matrix1[@]}" -eq "${#matrix2[@]}" ] && [ "${#matrix1[0]}" -eq "${#matrix2[0]}" ]; then
  # Add the matrices
  for ((i = 0; i < rows; i++)); do
    for ((j = 0; j < cols; j++)); do
      index=$((i * cols + j))
      result[$index]=$((matrix1[$index] + matrix2[$index]))
    done
  done

  # Print the result matrix
  echo "Resultant Matrix (Sum of Matrices):"
  print_matrix
else
  echo "Matrices cannot be added. Ensure they have the same dimensions."
fi
