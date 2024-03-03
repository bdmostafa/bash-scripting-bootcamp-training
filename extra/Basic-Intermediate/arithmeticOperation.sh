#!/opt/homebrew/opt/bash/bin/bash

# Beginner: Performing basic arithmetic
result=$((5 + 3))
echo "Result: $result"

# Intermediate: Using bc for floating-point arithmetic
result=$(echo "scale=2; 5 / 3" | bc)
echo "Result: $result"

# Advanced: Arithmetic with variables and complex expressions
a=10
b=3
c=5
expression_result=$(( (a * b) + c ))
echo "Result of expression: $expression_result"
