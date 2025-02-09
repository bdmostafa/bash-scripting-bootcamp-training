#!/bin/bash

function hi() {
    echo "Hi!"
    now
}

function now() {
    echo "It's $(date +%r)"
}

hi


# Functional parameters

function hello() {
    local param1 = $1
    echo "Hello $param1"
}

hello Mostafa

# Positional parameters
function hello() {
    for NAME in $@
    do
        echo "Hello $NAME"
    done
}

hello Mostafa Mahmud
