#!/bin/bash

List of items to iterate
items=("apple" "banana" "cherry")

# For loop to iterate over the list
for item in "${items[@]}"; do
    echo "I like $item"
done



# Print numbers from 1 to 5
i=1
while ((i<=5)); do
    echo $i
    ((i++))
done



# for ((i=1; i<=5; i++)); do
#     echo $i
# done


# While loop continues as long as counter is less than or equal to 5
# counter=1

# while [ $counter -le 5 ]; do
#     echo "Counter is $counter"
#     ((counter++)) # Increment the counter
# done



# # Read user input until 'quit' is entered
# input=""

# while [[ "$input" != "quit" ]]; do
#     read -p "Enter something (or 'quit' to exit): " input
#     echo "You entered: $input"
# done

# # Infinite loop
# while true; do
#     echo "This will run forever unless interrupted!"
#     sleep 1 # Sleep for 1 second to prevent overload
# done


# # Until loop continues until counter2 is greater than 5
# counter2=1 

# until [ $counter2 -gt 5 ]; do
#     echo "Counter2 is $counter2"
#     ((counter2++)) # Increment the counter2
# done





# # Print numbers from 1 to 5

# i=1
# until ((i>5)); do
#     echo $i
#     ((i++))
# done

# # Keep prompting until 'yes' is entered ===========

# input=""
# until [[ "$input" == "yes" ]]; do
#     read -p "Do you want to continue? (yes/no): " input
#     echo "You entered: $input"
# done

# # Example of while loop ============

# counter=0
# while (( counter < 5 )); do
#     echo "Counter: $counter"
#     (( counter++ ))
# done
# # The loop continues executing as long as the condition evaluates to false.

# # Once the condition becomes true, the loop terminates.




# # Same Logic with while vs until =====================

# counter_while=1
# # While loop: keep running until the counter_while is less than or equal to 5
# while [ $counter_while -le 5 ]; do
#     echo "Counter_while is $counter_while"
#     ((counter_while++))
# done

# counter_until=1
# # Until loop: keep running until the counter_until is greater than 5
# until [ $counter_until -gt 5 ]; do
#     echo "Counter_until is $counter_until"
#     ((counter_until++))
# done


# # Break and continue ========================

# for i in {1..10}; do
#     if [ $i -eq 5 ]; then
#         echo "Breaking at $i"
#         break
#     fi
#     echo "Iteration $i"
# done


# for i in {1..10}; do
#     if [ $i -eq 5 ]; then
#         echo "Skipping $i"
#         continue
#     fi
#     echo "Iteration $i"
# done





# # Example: Waiting for a service to become available ======================

# echo "Waiting for database service to become available..."

# until nc -z localhost 5432; do
#     echo "Database service is not yet available. Retrying in 5 seconds..."
#     sleep 5
# done

# echo "Database service is now available. Proceeding with the script."





# # Example: Polling a remote server until it responds ==========================

# echo "Polling remote server..."

# # Using 'while' loop to repeatedly send ping requests until a response is received

# while ! ping -c 1 -w 1 example.com &> /dev/null; do
#     echo "Remote server is not reachable. Retrying in 5 seconds..."
#     sleep 5
# done

# echo "Remote server is reachable. Proceeding with operations."



# # Example: Waiting for a file to be created =============================

# echo "Waiting for log file to be created..."

# # Using 'until' loop to wait until the file exists

# until [[ -f /var/log/application.log ]]; do
#     echo "Log file does not exist yet. Retrying in 3 seconds..."
#     sleep 3
#     # touch application.log
# done

# echo "Log file detected. Proceeding with processing."




# # Infinite loop example ==============
# while true
# do
#   read -p "Select your choice: 1: uptime.  2: disk usage. " MY_CHOICE
#   case "$MY_CHOICE" in
#     1)
#       uptime
#       ;;
#     2)
#       df -h
#       ;;
#     *) 
#       break
#       ;;
#   esac
# done




# # usecases: Server Health Check, System Monitoring Tool, File Management tool, Server Maintenance menu etc.


# # File Management Tool ============
# while true; do
#   echo "File Management Menu:"
#   echo "1: Create a file"
#   echo "2: Delete a file"
#   echo "3: View file contents"
#   echo "4: Exit"
#   read -p "Select an option: " OPTION

#   case "$OPTION" in
#     1)
#       read -p "Enter file name to create: " FILENAME
#       touch "$FILENAME" && echo "File '$FILENAME' created successfully."
#       ;;
#     2)
#       read -p "Enter file name to delete: " FILENAME
#       rm -i "$FILENAME"
#       ;;
#     3)
#       read -p "Enter file name to view: " FILENAME
#       if [[ -f "$FILENAME" ]]; then
#         cat "$FILENAME"
#       else
#         echo "File '$FILENAME' does not exist."
#       fi
#       ;;
#     4)
#       echo "Exiting..."
#       break
#       ;;
#     *)
#       echo "Invalid option. Please try again."
#       ;;
#   esac
# done


