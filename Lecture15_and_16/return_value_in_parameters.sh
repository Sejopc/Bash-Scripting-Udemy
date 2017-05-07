#!/bin/bash

NO_OF_ARGS=2
E_BADARGS=85
E_UNREADABLE=86

if [ $# -ne "$NO_OF_ARGS" ] # If number of params is not equals to 2...
then
	echo "Usage: `basename $0` testFile1 testFile2" # basename command strip directories and suffix from filenames, look on google for example.

exit $E_BADARGS # If above is true, exit code 85 is returned to the shell
fi

if [[ ! -r "$1" || ! -r "$2" ]] 
then
	echo "Files are not real"
exit "$E_UNREADABLE"
fi

cmp $1 $2 &> /dev/null # Will compare 2 files byte by byte, and redirect standard output and error to /dev/null, as we don't want it to output anything to the screen.

if [ $? -eq 0 ]
then
	echo "Files are the same"
else
	echo "Files are not the same"
fi

exit 0
