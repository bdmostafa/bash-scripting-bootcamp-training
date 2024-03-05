#!/bin/bash

# grep =================================

# grep is a powerful command-line utility used for searching patterns in text data. It stands for "global regular expression print." Here's a brief overview of its usage:
#

# Syntax of grep
# grep [options] pattern [file ...]

# 1. Search for a Pattern in a File:
# grep "pattern" file.txt

echo "apple banana orange kiwi" > file.txt
grep "banana" file.txt



# 2. Case-Insensitive Search (ignore case):
# grep -i "pattern" file.txt

grep -i "APPLE" file.txt



# 3. Prints lines that do not match the pattern
# grep -v "pattern" file.txt
# The option that inverts the matching logic. Instead of printing lines that match the pattern, it prints lines that do not match the pattern.

echo "apple banana orange kiwi" > file.txt
grep -v "banana" file.txt



# 4. Count Matching Lines
# grep -c "pattern" file.txt

grep -c "apple" file.txt



# 5. Search Recursively in Directories:
# grep -r "pattern" directory/

echo "apple banana orange kiwi" > directory/file.txt
grep -r "banana" directory/



# 6. Print Line Numbers
# grep -n "pattern" file.txt

grep -n "banana" file.txt



# 7. Display Matching Lines Only
# grep -o "pattern" file.txt

echo "apple banana orange kiwi" > file.txt
grep -o "banana" file.txt



# 8. Search for Multiple Patterns
# grep -e "pattern1" -e "pattern2" file.txt
# grep -E "pattern1|pattern2" file.txt

echo "apple banana orange kiwi" > file.txt
grep -e "apple" -e "kiwi" file.txt



# 9. Print Lines Before and After Match
# grep -B 1 "pattern" file.txt
# This command searches for lines containing "pattern" in the file file.txt.
# It also prints the line before each match (one line before) using the -B option.
# It does not print any lines after the match.

# grep -A 1 "pattern" file.txt
# This command searches for lines containing "pattern" in the file file.txt.
# It prints the line after each match (one line after) using the -A option.
# It does not print any lines before the match.

# grep -C 1 "pattern" file.txt
# This command searches for lines containing "pattern" in the file file.txt.
# It prints both the line before and after each match (one line before and one line after) using the -C option.

# grep -B 2 -A 2 "pattern" file.txt
# This command does not specify any pattern to search for (empty pattern).
# It prints two lines before and two lines after each match (total of 5 lines including the matching line) using both -B and -A options.


echo "apple
banana
orange
kiwi" > file.txt
grep -B 1 "banana" file.txt
grep -A 1 "banana" file.txt
grep -C 1 "banana" file.txt
grep -B 2 -A 2 "" file.txt

