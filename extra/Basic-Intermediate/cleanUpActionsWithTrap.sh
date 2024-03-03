# the cleanup function is defined to remove a temporary file. The trap cleanup EXIT line sets up the cleanup function to be executed when the script exits. When the script finishes execution or is terminated, the cleanup function is automatically called to perform cleanup actions.


# Cleanup function to remove temporary files
cleanup() {
    echo "Performing cleanup..."
    rm -f /tmp/temp_file
}

# Trap the EXIT signal and call the cleanup function
trap cleanup EXIT

# Simulating script execution
echo "Script is running..."
sleep 5
echo "Script execution completed."