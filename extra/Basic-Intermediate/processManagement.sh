#!/opt/homebrew/opt/bash/bin/bash

# Intermediate: Running processes in the background
sleep 5 &
pid=$!
echo "Background process ID: $pid"

# Advanced: Monitoring process completion
wait $pid
echo "Background process completed."
