# Print numbers from 1 to 5

i=1
until ((i>5)); do
    echo $i
    ((i++))
done

# Keep prompting until 'yes' is entered

input=""
until [[ "$input" == "yes" ]]; do
    read -p "Do you want to continue? (yes/no): " input
    echo "You entered: $input"
done

# Example: Waiting for a service to become available

echo "Waiting for database service to become available..."

until nc -z localhost 5432; do
    echo "Database service is not yet available. Retrying in 5 seconds..."
    sleep 5
done

echo "Database service is now available. Proceeding with the script."

# Example: Waiting for a file to be created

echo "Waiting for log file to be created..."

# Using 'until' loop to wait until the file exists

until [[ -f /var/log/application.log ]]; do
    echo "Log file does not exist yet. Retrying in 3 seconds..."
    sleep 3
done

echo "Log file detected. Proceeding with processing."
