#!/opt/homebrew/opt/bash/bin/bash

# Advanced: Enabling debugging mode
set -x

echo "This command is being debugged."

# Advanced: Tracing function calls
function my_function() {
    echo "Inside my_function."
}

set -o functrace
trap 'echo "Function call: $BASH_COMMAND"' DEBUG

my_function

# Disable debugging mode
set +x
