#!/bin/bash

NAME="John"; AGE=30; CITY="New York"

echo "Name: $NAME; Age: $AGE; City: $CITY"


NAME="John"
AGE=30
CITY="New York"

echo "Name: $NAME"
echo "Age: $AGE"
echo "City: $CITY"

# The ls command tries to list files in a non-existent directory and then prints the system hostname.
# Even if ls fails, the hostname command will still execute.
ls /not/there; hostname

# both the date and uptime commands sequentially.
# The date shows the current date and time, while uptime shows system uptime.
date; uptime

