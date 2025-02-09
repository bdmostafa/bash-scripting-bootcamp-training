
process_file() {
    case $1 in
        *.txt|*.md)
            echo "Text file: $1"
            # Process text files
            ;;
        *.jpg|*.png|*.gif)
            echo "Image file: $1"
            # Process image files
            ;;
        *.sh)
            echo "Shell script: $1"
            # Process shell scripts
            ;;
        *)
            echo "Unknown file type: $1"
            # Handle other file types
            ;;
    esac
}


# Loop through all files in the current directory
for file in *; do
    # Check if the file exists and is a regular file
    if [ -f "$file" ]; then
        # Process the file based on its type
        process_file "$file"
    fi
done
