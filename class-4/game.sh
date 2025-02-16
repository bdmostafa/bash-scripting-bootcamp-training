#!/bin/bash

# Passwprd strengh 
# Topic: String Manipulation, Conditionals
read -p "Enter a password: " password
if [[ ${#password} -ge 8 && "$password" =~ [A-Z] && "$password" =~ [0-9] ]]; then
  echo "Strong password!"
else
  echo "Weak password! Use at least 8 characters, including uppercase and numbers."
fi



# Math Challenge
# Topic: Arithmetic Operations, Loops
echo "Math Challenge: Solve 5 problems!"
score=0
for i in {1..5}; do
  num1=$((RANDOM % 10 + 1))
  num2=$((RANDOM % 10 + 1))
  answer=$((num1 + num2))
  read -p "What is $num1 + $num2? " user_answer
  if [[ "$user_answer" -eq "$answer" ]]; then
    echo "Correct!"
    ((score++))
  else
    echo "Wrong! The answer is $answer."
  fi
done
echo "Your score is $score/5"