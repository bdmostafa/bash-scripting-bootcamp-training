#!/opt/homebrew/opt/bash/bin/bash

# Beginner: For loop
for i in {1..5}; do
    echo "Iteration $i"
done

# Intermediate: While loop
count=0
while [ $count -lt 3 ]; do
    echo "Count: $count"
    ((count++))
done

# Advanced: Until loop
num=5
until [ $num -eq 0 ]; do
    echo "Number: $num"
    ((num--))
done
