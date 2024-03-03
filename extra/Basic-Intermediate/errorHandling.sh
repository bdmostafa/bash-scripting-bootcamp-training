#!/opt/homebrew/opt/bash/bin/bash

# Beginner: Basic error handling
command_that_might_fail="ls non_existent_directory"
$command_that_might_fail

if [ $? -ne 0 ]; then
    echo "Error: The command failed."
else
    echo "Command executed successfully."
fi

# Intermediate: Using `trap` for cleanup on script exit
temp_file="/tmp/temp_file.txt"

function cleanup() {
    rm -f $temp_file
    echo "Cleanup complete."
}

trap cleanup EXIT

echo "Some data" > $temp_file
echo "Script execution completed."
