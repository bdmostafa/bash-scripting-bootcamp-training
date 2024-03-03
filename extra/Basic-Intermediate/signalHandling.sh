#!/opt/homebrew/opt/bash/bin/bash

# Advanced: Custom signal handling
trap 'custom_handler' INT

function custom_handler() {
    echo "Custom handler: Received interrupt signal."
    # Additional cleanup or actions can be performed here
    exit 1
}

echo "Running infinite loop. Press Ctrl+C to trigger the custom handler."
while true; do
    sleep 1
done
