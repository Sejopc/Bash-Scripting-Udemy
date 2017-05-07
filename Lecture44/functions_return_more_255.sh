#!/bin/bash

ARGS=1
E_BADARGS=85

FILE=/etc/passwd
username=$1

if [ "$#" -ne $ARGS ]
then
	echo "USAGE: `basename $0` Username"
	exit $E_BADARGS # Remember, exit is not the same as return. With the latter we're just returning# a value, not an exit status.
fi

get_real_name()
{

	while read line
	do
		echo $line | grep $username | awk -F":" ' { print $5 } '	
	done # < $FILE       -> Yes, I can even put it on there, and will still work.
} < $FILE

get_real_name $username
