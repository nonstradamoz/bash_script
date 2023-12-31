#!/bin/bash

echo "Enter the value of variable1:"
read variable1
echo "Enter the value of variable2:"
read variable2

# Exchanging values
temp=$variable1
variable1=$variable2
variable2=$temp

echo "After exchanging:"
echo "Variable1: $variable1"
echo "Variable2: $variable2"

