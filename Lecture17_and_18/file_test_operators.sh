#!/bin/bash

var="/root/Documents/Python Examples - HackHappy/data.txt"

if [[ -e $var ]] # Will return true if file exists (-e).
then
	echo "File exists"
else
	echo "File does not exist"
fi

echo -----------------------

# -f -> returns true if file is a regular file, nor a directory or device file.
# -s -> true if file is no zero size (something in it)
# -r -> true if user running the test has the read permission on file.
# -x -> true if user running the test has the executable permission on file.
# -w -> true if user running the test has the write permission on file.
# ! -> reverses the result of a file test operator.

# EXIT STATUS CODES:
# E_NOARGS=65 -> Exit status if no arguments are given 
# E_BADARGS=85 -> Exit status if incorrect number of arguments are passed
# E_UNREADABLE=86 -> Exis status if unable to read the file whenever executing the script
# E_NOFILE =87 -> If file doesn't exist
# E_SIZE=89 -> If file is 0 in size

