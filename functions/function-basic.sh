#!/bin/bash

function hi() {
    echo "Hi!"
}

hi

function hi() {
    echo "Hi!"
    now
}

function now() {
    echo "It's $(date +%r)"
}

hi


function hi() {
    echo "Hi!"
    now
}

# This will cause an error as the "now()" function is not yet defined.
hi

function now() {
    echo "It's $(date +%r)"
}


function hi() {
    echo "Hi $1"
}

hi Mostafa


function hi() {
    for NAME in $@
    do
        echo "Hi $NAME"
    done
}

hi Mostafa Mahmud
