#!/bin/bash

my_function() {
    echo "$GLOBAL_VAR"
}

GLOBAL_VAR=1
# The value of GLOBAL_VAR is available to my_function
my_function



my_function() {
    echo "$GLOBAL_VAR"
}

# The value of GLOBAL_VAR is NOT available to my_function since GLOBAL_VAR was defined after my_function was called.
my_function
GLOBAL_VAR=1

my_function() {
    GLOBAL_VAR=1
}

# GLOBAL_VAR not available yet.
echo "GLOBAL_VAR value BEFORE my_function called: $GLOBAL_VAR"

my_function

# GLOBAL_VAR is NOW available
echo "GLOBAL_VAR value AFTER my_function called: $GLOBAL_VAR"

my_function() {
    local LOCAL_VAR=1
    echo "LOCAL_VAR can be accessed inside of the function: $LOCAL_VAR"
}

my_function

# LOCAL_VAR is not available outside of the function.
echo "LOCAL_VAR can NOT be accessed outside of the function: $LOCAL_VAR"

