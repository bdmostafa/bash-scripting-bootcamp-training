#!/opt/homebrew/opt/bash/bin/bash

# Beginner: Checking if a file exists
file_path="example.txt"
if [ -e $file_path ]; then
    echo "$file_path exists."
else
    echo "$file_path does not exist."
fi

# Intermediate: Reading from a file
file_content=$(cat $file_path)
echo "File content: $file_content"

# Advanced: Writing to a file
echo "Appending some text." >> $file_path
echo "New content: $(cat $file_path)"
