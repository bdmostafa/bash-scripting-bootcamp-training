#!/opt/homebrew/opt/bash/bin/bash

# Advanced: Running multiple commands in parallel
command1="sleep 3 && echo 'Command 1 completed'"
command2="sleep 5 && echo 'Command 2 completed'"

eval $command1 &
eval $command2 &

wait
echo "All commands completed."
