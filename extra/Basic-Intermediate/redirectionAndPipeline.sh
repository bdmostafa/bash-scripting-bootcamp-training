#!/opt/homebrew/opt/bash/bin/bash

# Intermediate: Redirecting output to a file
echo "Redirect this output" > output.txt
echo "hello" > data.txt

# Advanced: Using pipelines to process data
cat data.txt | grep "pattern" | sort >> processed_data.txt
