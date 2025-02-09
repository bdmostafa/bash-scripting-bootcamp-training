#!/bin/bash

# Beginner: Simple array
fruits=("Apple" "Banana" "Orange")
echo "First fruit: ${fruits[0]}"

# Intermediate: Adding elements to an array
fruits+=("Grapes" "Mango")
echo "Fruits: ${fruits[@]}"

# Advanced: Iterating through array elements
for fruit in "${fruits[@]}"; do
    echo "Processing $fruit"
done
