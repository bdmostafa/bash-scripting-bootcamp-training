

# Print numbers from 1 to 5

for ((i=1; i<=5; i++)); do
    echo $i
done

# Iterate over elements in an array

fruits=("apple" "banana" "orange")
for fruit in "${fruits[@]}"; do
    echo "I like $fruit"
done
