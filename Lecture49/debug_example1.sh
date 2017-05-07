#!/bin/bash

set -v

rm abc
let " line = $LINENO - 1" #LINENO variable denotes the number of the line where it is call, so since
# rm command is above, we have to substract 1

echo "rm is on line $line"


# sh -n [scriptName] (or "set -n") will check the script for syntax error, without actually running it.
# sh -v (or putting "set -v" on the script) will print the script code and then give the error message.
# sh -x (or "set -x") will output the output of each command (like substitute variable names with their value...), and # at the end, will print script output as normal

# Example
a=3
if [$a -gt 0] # When calling, this script, pass -x to sh (i.e sh -x debug_example1.sh)
	# If purposely didn't leave any space between [$a and 0], so it gives us the error.
then
	echo $a
fi

