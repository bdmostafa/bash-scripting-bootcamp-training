#!/opt/homebrew/opt/bash/bin/bash

# Single quotes preserve the literal value of each character
single_quoted='This is a single-quoted string.'

# Double quotes allow variable interpolation and escape sequences
double_quoted="This is a double-quoted string. $name"

echo $single_quoted
echo $double_quoted
