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

# Function to print the transpose of a matrix
print_transpose() {
  for ((i = 0; i < cols; i++)); do
    for ((j = 0; j < rows; j++)); do
      index=$((j * cols + i))
      echo -n "${matrix[$index]} "
    done
    echo
  done
}

echo "Enter details for the matrix:"
read_matrix

echo "Original Matrix:"
for ((i = 0; i < rows; i++)); do
  for ((j = 0; j < cols; j++)); do
    index=$((i * cols + j))
    echo -n "${matrix[$index]} "
  done
  echo
done

echo "Transpose of the Matrix:"
print_transpose
