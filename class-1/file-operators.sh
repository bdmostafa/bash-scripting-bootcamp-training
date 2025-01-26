#!/bin/bash

# Define file and directory names for demonstration
FILE="test_file.txt"
DIRECTORY="test_directory"
LINK="test_link"

# Create files and directories for testing (optional setup)
# -p option: This flag stands for "parents" and allows mkdir to create the specified directory and any necessary parent directories. If the directory already exists, it will not produce an error.
# ln: This command is used to create links (either hard or symbolic) to files.
# -s option: This flag stands for "symbolic". It tells ln to create a symbolic (or soft) link, which is a reference to another file or directory. A symbolic link works like a shortcut in a file system.
# ln -s - is useful for version management, creating shortcuts, or managing resources across different locations. It’s common for managing configuration files, libraries, or data across multiple systems or services.

touch $FILE
mkdir -p $DIRECTORY
ln -s $FILE $LINK

# File operator examples:

# -e: True if FILE exists
if [ -e "$FILE" ]; then
    echo "-e: $FILE exists."
else
    echo "-e: $FILE does not exist."
fi

# -f: True if FILE exists and is a regular file
if [ -f "$FILE" ]; then
    echo "-f: $FILE is a regular file."
else
    echo "-f: $FILE is not a regular file."
fi

# -d: True if FILE exists and is a directory
if [ -d "$DIRECTORY" ]; then
    echo "-d: $DIRECTORY exists and is a directory."
else
    echo "-d: $DIRECTORY does not exist or is not a directory."
fi

# -r: True if FILE exists and is readable
if [ -r "$FILE" ]; then
    echo "-r: $FILE is readable."
else
    echo "-r: $FILE is not readable."
fi

# -w: True if FILE exists and is writable
if [ -w "$FILE" ]; then
    echo "-w: $FILE is writable."
else
    echo "-w: $FILE is not writable."
fi

# -x: True if FILE exists and is executable
if [ -x "$FILE" ]; then
    echo "-x: $FILE is executable."
else
    echo "-x: $FILE is not executable."
fi

# -s: True if FILE exists and has a size greater than zero
if [ -s "$FILE" ]; then
    echo "-s: $FILE has a size greater than zero."
else
    echo "-s: $FILE is empty or does not exist."
fi

# -L: True if FILE exists and is a symbolic link
if [ -L "$LINK" ]; then
    echo "-L: $LINK is a symbolic link."
else
    echo "-L: $LINK is not a symbolic link."
fi

# -G: True if FILE exists and is owned by the effective group ID
if [ -G "$FILE" ]; then
    echo "-G: $FILE is owned by the effective group ID."
else
    echo "-G: $FILE is not owned by the effective group ID."
fi

# -O: True if FILE exists and is owned by the effective user ID
if [ -O "$FILE" ]; then
    echo "-O: $FILE is owned by the effective user ID."
else
    echo "-O: $FILE is not owned by the effective user ID."
fi

# Cleanup (optional)
# rm -f $FILE
# rm -rf $DIRECTORY
# rm -f $LINK
