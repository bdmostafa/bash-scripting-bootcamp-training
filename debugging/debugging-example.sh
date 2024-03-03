#!/bin/bash

# Enable debugging mode
set -x

# Define a function to calculate the factorial of a number
factorial() {
    local n=$1
    local result=1

    # Iterate from 1 to n and calculate the factorial
    for ((i = 1; i <= n; i++)); do
        result=$((result * i))
    done

    echo "Factorial of $n is $result"
}

# Call the factorial function with argument 5
factorial 5

# Disable debugging mode
set +x


# =======================
DEBUG=true

if $DEBUG
then
  echo "Debug mode ON."
else
  echo "Debug mode OFF."
fi


# =====================
DEBUG=true
$DEBUG && echo "Debug mode ON."


# ========================
DEBUG=false
$DEBUG || echo "Debug mode OFF."



# =========================
DEBUG=true

# This will not execute because DEUBG=true
$DEBUG || echo "Debug mode OFF."


# ======================
DEBUG="echo"
$DEBUG ls


# ======================
debug() {
  echo "Executing: $@"
  $@
}

debug ls