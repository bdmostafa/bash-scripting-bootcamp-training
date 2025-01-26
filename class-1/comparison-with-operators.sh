#!/bin/bash

# Initialize values
num1=5
num2=10

# Equal (-eq): Checks if two values are equal
if [ "$num1" -eq "$num2" ]; then
    echo "Equal: num1 ($num1) is equal to num2 ($num2)"
else
    echo "Equal: num1 ($num1) is NOT equal to num2 ($num2)"
fi

# Not Equal (-ne): Checks if two values are not equal
if [ "$num1" -ne "$num2" ]; then
    echo "Not Equal: num1 ($num1) is not equal to num2 ($num2)"
fi

# Greater Than (-gt): Checks if the first value is greater than the second
if [ "$num1" -gt "$num2" ]; then
    echo "Greater Than: num1 ($num1) is greater than num2 ($num2)"
else
    echo "Greater Than: num1 ($num1) is NOT greater than num2 ($num2)"
fi

# Greater Than or Equal To (-ge): Checks if the first value is greater than or equal to the second
if [ "$num1" -ge "$num2" ]; then
    echo "Greater Than or Equal: num1 ($num1) is greater than or equal to num2 ($num2)"
else
    echo "Greater Than or Equal: num1 ($num1) is less than num2 ($num2)"
fi

# Less Than (-lt): Checks if the first value is less than the second
if [ "$num1" -lt "$num2" ]; then
    echo "Less Than: num1 ($num1) is less than num2 ($num2)"
else
    echo "Less Than: num1 ($num1) is NOT less than num2 ($num2)"
fi

# Less Than or Equal To (-le): Checks if the first value is less than or equal to the second
if [ "$num1" -le "$num2" ]; then
    echo "Less Than or Equal: num1 ($num1) is less than or equal to num2 ($num2)"
else
    echo "Less Than or Equal: num1 ($num1) is greater than num2 ($num2)"
fi

# Combined Example
if [ "$num1" -eq "$num2" ]; then
    echo "Combined Check: num1 is equal to num2"
elif [ "$num1" -lt "$num2" ]; then
    echo "Combined Check: num1 is less than num2"
else
    echo "Combined Check: num1 is greater than num2"
fi


# Comparison with string operators ===================

# # Initialize string values
# string1="Hello"
# string2="World"
# string3="hello"
# string4="hello"

# # String Equal (=): Checks if two strings are equal
# if [ "$string1" = "$string2" ]; then
#     echo "Equal: '$string1' is equal to '$string2'"
# else
#     echo "Equal: '$string1' is NOT equal to '$string2'"
# fi

# # String Not Equal (!=): Checks if two strings are not equal
# if [ "$string1" != "$string2" ]; then
#     echo "Not Equal: '$string1' is not equal to '$string2'"
# fi

# # String Less Than (<): Compares strings lexicographically (based on ASCII value)
# if [[ "$string1" < "$string2" ]]; then
#     echo "Less Than: '$string1' is lexicographically less than '$string2'"
# fi

# # String Greater Than (>): Compares strings lexicographically
# if [[ "$string1" > "$string2" ]]; then
#     echo "Greater Than: '$string1' is lexicographically greater than '$string2'"
# fi

# # String Length -z: Checks if the string length is zero (empty string)
# if [ -z "$string1" ]; then
#     echo "String is empty: '$string1'"
# else
#     echo "String is NOT empty: '$string1'"
# fi

# # String Length -n: Checks if the string length is non-zero (not empty)
# if [ -n "$string1" ]; then
#     echo "String is NOT empty: '$string1'"
# fi

# # String Comparison using double square brackets (more flexible)
# if [[ "$string3" == "$string4" ]]; then
#     echo "Double Bracket Comparison: '$string3' is equal to '$string4'"
# else
#     echo "Double Bracket Comparison: '$string3' is NOT equal to '$string4'"
# fi
