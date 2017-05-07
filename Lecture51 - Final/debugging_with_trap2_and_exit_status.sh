#!/bin/bash

E_BADARGS=65 # No parameters passed to the script
E_NOFILE=66 # File passed as a parameters, doesn't exit

trap 'echo "No parameters passed to the script"' EXIT

if [ -z "$1" ]
then
	exit $E_BADARGS
fi
trap - EXIT # If above condition (if-then), turns false (meaning we indeed passed a parameter), we don't
# want the 1st trap to execute, as is no longer true. We want it to be executed only if the condition tur# ns true (meaning, we didn't pass any file as a parameters). So basically, this line turns off trap.

trap 'echo "File $1: not found"' EXIT

if [ -f "$1" ]
then
	rm $1
	echo "$1 Removed..."
else
	exit $E_NOFILE
fi
trap - EXIT # Same.. if file indeed exists, we don't want the 2nd trap message to be executed as it will
# be no longer true.

