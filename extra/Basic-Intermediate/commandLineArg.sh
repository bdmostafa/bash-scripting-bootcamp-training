#!/opt/homebrew/opt/bash/bin/bash

# Beginner: Reading command-line arguments
echo "Script name: $0"
echo "First argument: $1"
echo "Second argument: $2"
echo "Script name: $0"
echo "Number of arguments: $#"
echo "All arguments by them together (as a single string): $*"
echo "All arguments as an array (as separate strings): $@"

echo "Individual arguments using \$1, \$2, ...:"
echo "Argument 1: $1"
echo "Argument 2: $2"

echo "Looping through all arguments using \$@:"
for arg in "$@"; do
    echo "Argument: $arg"
done

# Intermediate: Using getopt for more complex argument parsing
while getopts ":a:b:" opt; do
    case $opt in
        a)
            arg_a="$OPTARG"
            ;;
        b)
            arg_b="$OPTARG"
            ;;
        \?)
            echo "Invalid option: -$OPTARG" >&2
            exit 1
            ;;
    esac
done

echo "Option -a: $arg_a"
echo "Option -b: $arg_b"
