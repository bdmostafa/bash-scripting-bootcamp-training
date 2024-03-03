#!/bin/bash

# Print numbers from 1 to 5

# i=1
# while ((i<=5)); do
#     echo $i
#     ((i++))
# done

# # Read user input until 'quit' is entered
# input=""

# while [[ "$input" != "quit" ]]; do
#     read -p "Enter something (or 'quit' to exit): " input
#     echo "You entered: $input"
# done

# # Example of a while loop

# count=1

# while [[ $count -le 5 ]]; do
#     echo "Count: $count"
#     ((count++))
# done

# # The while loop iterates as long as the variable count is less than or equal to 5.


# # Example of an infinite loop

# while true; do
#     echo "This loop runs forever!"
# done


# # The infinite loop, if uncommented, will continue to execute indefinitely, printing "This loop runs forever!" repeatedly until manually stopped.


# # Example of while loop

# counter=0
# while (( counter < 5 )); do
#     echo "Counter: $counter"
#     (( counter++ ))
# done


# # Example: Polling a remote server until it responds

# echo "Polling remote server..."

# # Using 'while' loop to repeatedly send ping requests until a response is received

# while ! ping -c 1 -W 1 example.com &> /dev/null; do
#     echo "Remote server is not reachable. Retrying in 5 seconds..."
#     sleep 5
# done

# echo "Remote server is reachable. Proceeding with operations."


# Infinite loop - real case example

while true
do
  read -p "Select your choice: 1: uptime.  2: disk usage. " CHOICE
  case "$CHOICE" in
    1)
      uptime
      ;;
    2)
      df -h
      ;;
    *) 
      break
      ;;
  esac
done
