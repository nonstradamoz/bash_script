#!/bin/bash

echo "Enter four integers:"
read num1
read num2
read num3
read num4

# Calculating sum, average, and product
sum=$((num1 + num2 + num3 + num4))
average=$((sum / 4))
product=$((num1 * num2 * num3 * num4))

echo "Sum: $sum"
echo "Average: $average"
echo "Product: $product"

