#!/bin/bash

# Input for rectangle
echo "Enter the length of the rectangle:"
read length
echo "Enter the breadth of the rectangle:"
read breadth

# Calculate area and perimeter of rectangle
area_rectangle=$((length * breadth))
perimeter_rectangle=$((2 * (length + breadth)))

echo "Area of Rectangle: $area_rectangle"
echo "Perimeter of Rectangle: $perimeter_rectangle"

# Input for circle
echo "Enter the radius of the circle:"
read radius

# Calculate area and circumference of circle
pi=3.14159
area_circle=$(echo "scale=2; $pi * $radius * $radius" | bc)
circumference_circle=$(echo "scale=2; 2 * $pi * $radius" | bc)

echo "Area of Circle: $area_circle"
echo "Circumference of Circle: $circumference_circle"
