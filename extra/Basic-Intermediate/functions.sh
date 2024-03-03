#!/opt/homebrew/opt/bash/bin/bash

# Beginner: Simple function
function greet() {
    echo "Hello, $1!"
}

greet "Alice"
greet "Bob"

# Intermediate: Function with return value
function add() {
    result=$(($1 + $2))
    echo $result
}

sum=$(add 5 3)
echo "Sum: $sum"

# Advanced: Recursive function
function factorial() {
    if [ $1 -eq 0 ] || [ $1 -eq 1 ]; then
        echo 1
    else
        sub_factorial=$(factorial $(($1 - 1)))
        echo $(($1 * $sub_factorial))
    fi
}
read -p "Give factorial number" factorialNumber
result=$(factorial $factorialNumber)
echo "Factorial of 5: $result"
