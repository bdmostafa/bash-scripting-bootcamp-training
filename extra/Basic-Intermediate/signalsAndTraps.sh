#!/opt/homebrew/opt/bash/bin/bash

# Intermediate: Handling signals with traps
trap 'echo "Received interrupt signal"; exit' INT

echo "Running infinite loop. Press Ctrl+C to exit."
while true; do
    sleep 1
done
