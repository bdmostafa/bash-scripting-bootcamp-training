#!/bin/bash

# Addition (+): Adds two numbers
num1=5
num2=3
sum=$((num1 + num2))
echo "Addition: $num1 + $num2 = $sum"

# Subtraction (-): Subtracts the second number from the first
difference=$((num1 - num2))
echo "Subtraction: $num1 - $num2 = $difference"

# Multiplication (*): Multiplies two numbers
num3=4
product=$((num1 * num3))
echo "Multiplication: $num1 * $num3 = $product"

# Division (/): Divides the first number by the second
num4=20
num5=5
quotient=$((num4 / num5))
echo "Division: $num4 / $num5 = $quotient"

# Modulus (%): Returns the remainder of the division
remainder=$((num4 % num3))
echo "Modulus: $num4 % $num3 = $remainder"

# Increment (++): Increases the value of a variable by 1
count=5
((count++))
echo "Incremented value of count: $count"

# Decrement (--): Decreases the value of a variable by 1
((count--))
echo "Decremented value of count: $count"

# Combined operations
result=$(( (num1 + num2) * num3 / num5 ))
echo "Combined operation result: (($num1 + $num2) * $num3 / $num5) = $result"
