#!/opt/homebrew/opt/bash/bin/bash

# Beginner: Capturing command output
current_date=$(date)
echo "Current date: $current_date"

# Intermediate: Using command substitution in a variable
files_in_directory=$(ls)
echo "Files in directory: $files_in_directory"

# Advanced: Command substitution in a loop
for file in $(ls); do
    echo "Processing file: $file"
done
