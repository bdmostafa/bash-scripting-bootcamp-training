#!/opt/homebrew/opt/bash/bin/bash

# Beginner: Variable assignment
name="John"
echo "Hello, $name!"

# Intermediate: Reading input into a variable
read -p "Enter your name: " user_name
echo "Hello, $user_name!"

# Advanced: Variable interpolation within a string
greeting="Welcome"
message="$greeting, $user_name!"
echo $message
