#!/opt/homebrew/opt/bash/bin/bash

: '
Source: https://codeahoy.com/learn/introtobash/ch18/

3 File Descriptors, STDIN (0); STDOUT (1) and STDERR (2).

STDIN (fd: 0): Manages the input in the terminal.
STDOUT (fd: 1): Manages the output text in the terminal.
STDERR (fd: 2): Manages the error text in the terminal.

>	Save output to a file
>>	Append output to a file
<	Read input from a file
2>	Redirect error messages
\|	Send the output from one program as input to another program
<<	Pipe multiple lines into a program cleanly
<<<	Pipe a single line into a program cleanly
'

# STDIN (Standard Input) =================================
# input data from a file instead of typing it interactively
cat < file.txt

# simply print the provided text
cat << EOF
Hello World!
How are you?
EOF


# The same can be done with other commands that take input via STDIN. Like, wc:
wc -l << EOF
Hello World!
How are you?
EOF

# Output: 2
# The -l flag with wc counts the number of lines. This block of bash code will print the number of lines


# STDOUT (Standard Output) ================================
# The STDOUT of a command can be redirected into a file
echo "Hello World!" > file.txt

# cat file.txt

echo "Hello World!" > file.txt
echo "How are you?" > file.txt

# cat file.txt
# How are you?

echo "Hello World!" > file.txt
echo "How are you?" >> file.txt

# Hello World!
# How are you?


# Alternatively, the redirection operator for STDOUT can also be written as 1>

echo "Hello World!" 1> file.txt


# STDERR (Standard Error) ================================
# The error text on the terminal is printed via the STDERR of the the command using the operator 2>

ls --hi 2> error.txt

# cat error.txt

# Also we can use 2>> just like STDOUT

ls --hi 2> /dev/null

# We can redirect both STDOUT and STDERR for the same command or script

./run_script.sh > output.txt 2> error.txt

# Redirect to the same file
./run_script.sh > same_file.txt 2> same_file.txt

# A shorter way to the same file
./run_script.sh > file.txt 2>&1



# Piping =================================================
# To concatenate the output of program (command) as the input of another program (command) we can use a vertical bar |.

ls | grep ".sh"

# HereDocument =================================================
# COMMAND << EOF
# 	ContentOfDocument
# 	...
# 	...
# EOF

cat << text1 | wc
	lorem ipsum dolor sit amet tempor   invidunt 
    jdirty d poster vol praesent taciti soc
    ut labore et dolore magna
text1

# Also, pre-defined variables can be used inside the heredocs.

# HereString =================================================
cat << text1
    lorem ipsum dolor sit amet tempor   invidunt 
text1