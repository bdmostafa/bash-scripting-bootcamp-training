#!/bin/bash


#1. Print Entire Line:
awk '{print}' file.txt


# 2. Print Specific Field(s)
awk '{print $1}' file.txt


# 3. Print Multiple Fields
awk '{print $1, $3}' file.txt



# 4. Print Lines Based on Condition
# awk '$1 == "pattern" {print}' file.txt
awk '$1 == "Hello" {print}' file.txt


# 5. Print Lines Matching a Regular Expression
# awk '/pattern/ {print}' file.txt
# awk '/regex_pattern/ {print}' file.txt
awk '/[[:alpha:]]/ {print}' file.txt
awk '/[[:digit:]]/ {print}' file.txt


# 6. Sum Values in a Column
awk '{sum += $1} END {print sum}' file.txt


# 7. Print Number of Lines
awk 'END {print NR}' file.txt


# 8. Print Lines Between Patterns
# awk '/start_pattern/, /end_pattern/' file.txt

# let's add text to file first with Redirection
echo "line1" > file.txt
echo "line2" >> file.txt
echo "line3" >> file.txt

awk '/line2/, /line3/' file.txt

# Output: 
# line2
# line3

# Let's add text to tmp_file and remove it from the file together
# Use awk to print lines from file.txt, excluding the lines between line2 and line3.
# Redirect the output to a temporary file named tmp_file.txt.
# If the awk command completes successfully, it will replace the original file.txt with tmp_file.txt.
awk '/line2/,/line3/ {next} {print}' file.txt > tmp_file.txt && mv tmp_file.txt file.txt


# 9. Print Field Separated by Custom Delimiter
# Prints the first field of each line, using comma as the delimiter
awk -F',' '{print $1}' file.txt



# 10. Formatting Output
# Prints the first two fields of each line with a specific width and left-aligned
awk '{printf "%-10s %s\n", $1, $2}' file.txt




# Real-life example ===============================================

# We have a CSV file named sales.csv
# We want to calculate the total sales amount for each product, which is the product of the price and quantity, and print the results.

awk -F',' 'NR > 1 { total[$2] += $3 * $4 } END { for (product in total) print product, total[product] }' sales.csv

# Explaination:

# -F',': Specifies that the field separator is a comma. This tells awk to split each line of input into fields based on commas.
# NR > 1: Skips the first line of the input file, assuming it contains headers.
# { total[$2] += $3 * $4 }: For each line (starting from the second line), calculates the total sales amount for each product by multiplying the price ($3) by the quantity ($4) and adding it to the corresponding entry in the total array, indexed by the product name ($2).
# END { for (product in total) print product, total[product] }: After processing all lines, iterates over the total array and prints each product name along with its total sales amount.

# Output:
# Orange 36
# Banana 14
# Apple 25