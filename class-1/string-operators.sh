#!/bin/bash

# Define a string for demonstration
STRING="Hello, Shell scripting is amazing!"

# -z: Returns true if the string length is zero
EMPTY_STRING=""
if [ -z "$EMPTY_STRING" ]; then
    echo "-z: The string is empty."
else
    echo "-z: The string is not empty."
fi

# -n: Returns true if the string length is non-zero
if [ -n "$STRING" ]; then
    echo "-n: The string is not empty."
else
    echo "-n: The string is empty."
fi

# Length Operator - ${#string}
LENGTH=${#STRING}
echo "Length of the string: $LENGTH"

# Substring Removal (Prefix)
echo "Original String: $STRING"
echo "${STRING#*, } - Remove shortest prefix match before ','"
echo "${STRING##*, } - Remove longest prefix match before ','"

# Substring Removal (Suffix)
echo "${STRING%,*} - Remove shortest suffix match after ','"
echo "${STRING%%,*} - Remove longest suffix match after ','"

# Substring Extraction - ${string:start:length}
echo "Substring (start at 7, length 4): ${STRING:7:4}"

# Substring Replacement
echo "${STRING/scripting/coding} - Replace first occurrence of 'scripting' with 'programming'"
echo "${STRING//is/was} - Replace all occurrences of 'is' with 'was'"

# Substring Test (Testing if a substring exists)
SUBSTRING="amazing"
if [[ "$STRING" == *"$SUBSTRING"* ]]; then
    echo "Substring Test: '$SUBSTRING' is present in the string."
else
    echo "Substring Test: '$SUBSTRING' is not present in the string."
fi
