#!/bin/bash

Example of a successful command
echo "This is a successful command."
echo "Exit status of the last command: $?"

# Example of a failed command (command not found)
non_existent_command
echo "Exit status of the failed command: $?"

# Example of a command with permission denied (e.g., a non-executable file)
touch /root/testfile  # Assuming this script isn't running as root
echo "Exit status of the permission denied command: $?"

# Check the exit status using $? after a command execution
if [ $? -eq 0 ]; then
    echo "The previous command was successful."
else
    echo "The previous command failed with exit status $?."
fi

Exit with a custom exit code
echo "Exiting the script with custom exit status."
# exit 5


# # Trying to list a non-existent directory
# ls /not/there/

# # Check the exit status of the last command
# echo "$?"


# HOST="google.com"

# # # Check if the host is reachable
# # ping -c 1 $HOST
# # RETURN_CODE=$?

# # # Check the exit status of the ping command
# # if [ "$?" -ne "0" ]; then
# #     echo "$HOST is unreachable."
# # else
# #     echo "$HOST is reachable."
# # fi

# # # Check the exit status of the ping command
# # if [ "$RETURN_CODE" -ne "0" ]; then
# #     echo "$HOST is unreachable."
# # else
# #     echo "$HOST is reachable."
# # fi

# # Check if the host is reachable, then echo the result
# ping -c 1 $HOST && echo "$HOST is reachable."


# # If the host is not reachable, it will echo the result
# ping -c 1 $HOST || echo "$HOST is unreachable."  
# # If the ping command fails, the script will print "google.com is unreachable.



# Sample 1: Successful execution (exit 0)
# echo "Step 1: Script executed successfully."
# exit 0
# # Output: 0 - Successful execution

# # Sample 2: File not found error (exit 1)
# echo "Step 2: Checking for missing file."
# if [ ! -f "important_file.txt" ]; then
#     echo "Error: File not found."
#     exit 1
# fi
# # Output: 1 - File not found

# # Sample 3: Incorrect usage of script (exit 2)
# echo "Step 3: Incorrect usage example."
# if [ $# -ne 1 ]; then
#     echo "Usage: $0 <filename>"
#     exit 2
# fi
# # Output: 2 - Incorrect usage (Missing argument)

# # Sample 4: Custom error - Directory does not exist (exit 3)
# echo "Step 4: Directory existence check."
# if [ ! -d "$1" ]; then
#     echo "Error: Directory does not exist."
#     exit 3
# fi
# # Output: 3 - Directory does not exist

# # Sample 5: Fatal error - Cannot read file (exit 255)
# echo "Step 5: Fatal error - file readability check."
# if [ ! -r "$1" ]; then
#     echo "Fatal error: Cannot read file $1."
#     exit 255
# fi
# # Output: 255 - Fatal error (File cannot be read)

# # Sample 6: Default exit status of the last executed command
# echo "Step 6: Default exit status of the last executed command."
# cp non_existent_file.txt /tmp
# echo "Last command exit status: $?" # Should output 1
# # Output: 1 - Command failed (file not found)

# # Sample 7: Check if directory is writable (exit 2)
# echo "Step 7: Directory writable check."
# if [ ! -w "/some/directory" ]; then
#     echo "Directory is not writable, exiting."
#     exit 2
# fi
# # Output: 2 - Directory is not writable

# # Sample 8: Exit after specific command failure (exit 1)
# echo "Step 8: Exit after command failure."
# cp /some/file /some/other/place || exit 1
# # Output: 1 - Command failed (file not copied)

# # Sample 9: Using && and || to handle success or failure
# echo "Step 9: Handling success or failure with && and ||."
# mkdir /some/dir && echo "Directory created successfully" || exit 1
# # Output: 0 - Directory created successfully or exit 1 if mkdir failed

# # Sample 10: Debugging with specific exit codes
# echo "Step 10: Debugging script with specific exit codes."
# echo "Running Step 1: Doing task 1"
# if [ $? -ne 0 ]; then
#     echo "Error during Step 1"
#     exit 1
# fi

# echo "Running Step 2: Doing task 2"
# if [ $? -ne 0 ]; then
#     echo "Error during Step 2"
#     exit 2
# fi

# echo "Script completed successfully."
# exit 0
