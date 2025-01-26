#!/bin/bash

# $@ - Stores arguments as an array
echo "Arguments stored in \$@: $@"

# $# - Show the number of arguments supplied in a given script
echo "Number of arguments: $#"

# $$ - Displays the process ID of the current shell
echo "Process ID of the current shell: $$"

# $* - Groups all given arguments by connecting them together
echo "Arguments grouped together using \$*: $*"

# $! - Shows the ID of the last background job (none in this case, so it will be empty)
echo "ID of the last background job: $!"

# $? - Displays the exit status code for the latest executed command
echo "Exit status code of the last command: $?"

# $0 - Displays the filename of the current script
echo "Filename of the current script: $0"

# $_ - Sets the variable to the latest argument of the last command
echo "Latest argument of the last command: $_"

# $- - Displays the currently used flags on bash shell
echo "Current shell flags: $-"

# $1-${11} - Store data of the first 11 argument names
echo "First argument: $1"
echo "Second argument: $2"
echo "Third argument: $3"
echo "Fourth argument: $4"
echo "Fifth argument: $5"
echo "Sixth argument: $6"
echo "Seventh argument: $7"
echo "Eighth argument: $8"
echo "Ninth argument: $9"
echo "Tenth argument: ${10}"
echo "Eleventh argument: ${11}"


# Make it executable
# chmod +x special-arg.sh


# Run the command 
# ./special-var.sh arg1 arg2 arg3 arg4 arg5 arg6 arg7 arg8 arg9 arg10 arg11


# =================

# # $@ - Stores arguments as an array
# echo "Arguments stored in \$@:"
# for arg in "$@"; do
#     echo "$arg"
# done

# # $# - Shows the number of arguments supplied to the script
# echo "Number of arguments: $#"

# # $$ - Displays the process ID of the current shell
# echo "Process ID of the current shell: $$"

# # $* - Groups all given arguments by connecting them together
# echo "Arguments grouped together using \$*:"
# echo "$*"

# # $! - Shows the ID of the last background job
# echo "ID of the last background job: $!"
# echo "Starting a background job (sleep for 5 seconds)..."
# sleep 5 &
# echo "ID of the last background job after starting sleep: $!"

# # $? - Displays the exit status code of the last executed command
# echo "Exit status code of the previous command: $?"
# echo "Simulating an error command..."
# ls /nonexistentfile &> /dev/null
# echo "Exit status code of the failed command: $?"
