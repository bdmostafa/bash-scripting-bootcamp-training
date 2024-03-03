#!/opt/homebrew/opt/bash/bin/bash

# ------------------------------------------
# Arithmetic Operators:
# ------------------------------------------
# - Addition: +
# - Subtraction: -
# - Multiplication: *
# - Division: /
# - Modulus (Remainder): %
# - Exponentiation: **
# - Equal Comparision: =
# - Equality Comparision: ==
# - Not Equal: !=

# Example:
num1=10
num2=3

# Addition
result_add=$((num1 + num2))

# Subtraction
result_sub=$((num1 - num2))

# Multiplication
result_mul=$((num1 * num2))

# Division
result_div=$((num1 / num2))

# Modulus (Remainder)
result_mod=$((num1 % num2))

# Exponentiation
result_exp=$((num1 ** num2))

echo "Arithmetic Operations:"
echo "Addition: $result_add"
echo "Subtraction: $result_sub"
echo "Multiplication: $result_mul"
echo "Division: $result_div"
echo "Modulus: $result_mod"
echo "Exponentiation: $result_exp"

# Using == for equality comparison
if [ "$num1" == "$num2" ]; then
    echo "$num1 is equal to $num2"
else
    echo "$num1 is not equal to $num2"
fi

# Using != for inequality comparison
if [ "$num1" != "$num2" ]; then
    echo "$num1 is not equal to $num2"
else
    echo "$num1 is equal to $num2"
fi

# Using expr and backtick ==================

# Using expr for addition
sum=$(expr $num1 + $num2)
sumWithExprAndBacktickKey=`expr $num1 + $num2`
echo "Sum of $num1 and $num2 is: $sum"
echo "sumWithExprAndBacktickKey of $num1 and $num2 is: $sumWithExprAndBacktickKey"

# Using expr for subtraction
difference=$(expr $num1 - $num2)
echo "Difference between $num1 and $num2 is: $difference"

# Using expr for multiplication
product=$(expr $num1 \* $num2)  # Note: * needs to be escaped or quoted
echo "Product of $num1 and $num2 is: $product"

# Using expr for division
quotient=$(expr $num2 / $num1)
echo "Quotient of $num2 divided by $num1 is: $quotient"

# ------------------------------------------
# Boolean Operators:
# ------------------------------------------
# - AND: &&
# - OR: ||
# - NOT: !

# Example:
bool1=true
bool2=false

# AND
result_and=$((bool1 && bool2))

# OR
result_or=$((bool1 || bool2))

# NOT
result_not=!$bool1

echo -e "\nBoolean Operations:"
echo "AND: $result_and"
echo "OR: $result_or"
echo "NOT: $result_not"

# ------------------------------------------
# Relational Operators:
# ------------------------------------------
# - Equal: == or -eq
# - Not Equal: != or -ne
# - Greater Than: > or -gt
# - Less Than: < or -lt
# - Greater Than or Equal To: >= or -ge
# - Less Than or Equal To: <= or -le

# Example:
value1=5
value2=10

# Equal
result_eq=$((value1 == value2))

# Not Equal
result_neq=$((value1 != value2))

# Greater Than
result_gt=$((value1 > value2))

# Less Than
result_lt=$((value1 < value2))

# Greater Than or Equal To
result_gte=$((value1 >= value2))

# Less Than or Equal To
result_lte=$((value1 <= value2))

echo -e "\nRelational Operations:"
echo "Equal: $result_eq"
echo "Not Equal: $result_neq"
echo "Greater Than: $result_gt"
echo "Less Than: $result_lt"
echo "Greater Than or Equal To: $result_gte"
echo "Less Than or Equal To: $result_lte"

# Examples with -eg, -gt, -lt, and so on =================

# Equal
if [ "$value1" -eq "$value2" ]; then
    echo "Equal: $value1 is equal to $value2"
else
    echo "Equal: $value1 is not equal to $value2"
fi

# Not Equal
if [ "$value1" -ne "$value2" ]; then
    echo "Not Equal: $value1 is not equal to $value2"
else
    echo "Not Equal: $value1 is equal to $value2"
fi

# Greater Than
if [ "$value1" -gt "$value2" ]; then
    echo "Greater Than: $value1 is greater than $value2"
else
    echo "Greater Than: $value1 is not greater than $value2"
fi

# Less Than
if [ "$value1" -lt "$value2" ]; then
    echo "Less Than: $value1 is less than $value2"
else
    echo "Less Than: $value1 is not less than $value2"
fi

# Greater Than or Equal To
if [ "$value1" -ge "$value2" ]; then
    echo "Greater Than or Equal To: $value1 is greater than or equal to $value2"
else
    echo "Greater Than or Equal To: $value1 is not greater than or equal to $value2"
fi

# Less Than or Equal To
if [ "$value1" -le "$value2" ]; then
    echo "Less Than or Equal To: $value1 is less than or equal to $value2"
else
    echo "Less Than or Equal To: $value1 is not less than or equal to $value2"
fi

# ------------------------------------------
# File Test Operators:
# ------------------------------------------
# - -e: Checks if a file exists
# - -f: Checks if it is a regular file
# - -d: Checks if it is a directory
# - -s: Checks if the file is not empty
# - -r: Checks if the file has read permission
# - -w: Checks if the file has write permission
# - -x: Checks if the file has execute permission

# Example:
file_path="example_file.txt"

# Check if file exists
if [ -e "$file_path" ]; then
    echo -e "\nFile Test Operations:"
    echo "File '$file_path' exists."

    # Check if it is a regular file
    if [ -f "$file_path" ]; then
        echo "It is a regular file."

        # Check if the file is not empty
        if [ -s "$file_path" ]; then
            echo "The file is not empty."
        else
            echo "The file is empty."
        fi
    fi

    # Check if it is a directory
    if [ -d "$file_path" ]; then
        echo "It is a directory."
    fi

    # Check file permissions
    if [ -r "$file_path" ]; then
        echo "The file has read permission."
    fi

    if [ -w "$file_path" ]; then
        echo "The file has write permission."
    fi

    if [ -x "$file_path" ]; then
        echo "The file has execute permission."
    fi
else
    echo -e "\nFile '$file_path' does not exist."
fi

# ------------------------------------------
# String Operators:
# ------------------------------------------
# - =: Checks if two strings are equal
# - !=: Checks if two strings are not equal
# - -: Checks if a string is empty
# - <: Checks if one string is lexicographically less than another
# - >: Checks if one string is lexicographically greater than another

# Example:
string1="hello"
string2="world"

# Equal
result_str_eq=$((string1 == string2))

# Not Equal
result_str_neq=$((string1 != string2))

# Empty
result_str_empty=$(( -z "$string1" ))

# Lexicographically Less Than
result_str_lt=$((string1 < string2))

# Lexicographically Greater Than
result_str_gt=$((string1 > string2))

echo -e "\nString Operations:"
echo "Equal: $result_str_eq"
echo "Not Equal: $result_str_neq"
echo "Empty: $result_str_empty"
echo "Lexicographically Less Than: $result_str_lt"
echo "Lexicographically Greater Than: $result_str_gt"

# End of the script
