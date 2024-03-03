# !/opt/homebrew/opt/bash/bin/bash

# Beginner: Simple if-else statement
age=25

if [ $age -ge 18 ]; then
    echo "You are an adult."
else
    echo "You are a minor."
fi

# Intermediate: Case statement
read -p "Enter a fruit: " chosen_fruit

case $chosen_fruit in
    "Apple")
        echo "You chose Apple."
        ;;
    "Banana")
        echo "You chose Banana."
        ;;
    *)
        echo "Unknown fruit."
        ;;
esac
