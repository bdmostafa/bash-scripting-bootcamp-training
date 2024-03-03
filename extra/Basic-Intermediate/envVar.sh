#!/opt/homebrew/opt/bash/bin/bash

# Intermediate: Accessing environment variables
echo "User home directory: $HOME"
echo "Current user: $USER"
echo "Current working directory: $PWD"

# Advanced: Modifying environment variables for a script session
MY_VARIABLE="initial_value"
export MY_VARIABLE

echo "Current value of MY_VARIABLE: $MY_VARIABLE"
MY_VARIABLE="modified_value"
echo "Modified value of MY_VARIABLE: $MY_VARIABLE"
