#!/bin/bash

function hi() {
   echo "Hi!"
   now
}

hi

function now() {
   echo "It's $(date +%r)"
}

# This will cause an error as the "now()" function is not yet defined.