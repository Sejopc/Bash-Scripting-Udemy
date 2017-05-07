#!/bin/bash

NO_OF_ARGS=2

E_NOARGS=65
E_BADARGS=85
E_UNREADABLE=86
E_NOFILE=87
E_SIZE=89

if [[ -z "$1" && -z "$2" ]]
then
	echo "No arguments given"
	exit $E_NOARGS
fi

if [ $# -ne "$NO_OF_ARGS" ]
then
	echo "USAGE: `basename $0` file1 file2"
	exit $E_BADARGS
fi

if [[ ! -e "$1" || ! -e "$2" ]]
then
	echo "Files do no exist"
	exit $E_NOFILE
elif [[ ! -f "$1" || ! -f "$2" ]]
then
	echo "Files need to be regular files, not directory or device file"
	exit $E_NOFILE
elif [[ ! -r "$1" || ! -r "$2" ]]
then
	echo "No read permission on file(s)"
	exit $E_UNREADABLE
elif [[ ! -s "$1" || ! -s "$2" ]]
then
	echo "Files are zero-size"
	exit $E_SIZE
fi

cat $1 $2 | sort > files_together.txt

if [ $? -eq 0 ]
then
	echo "Execution of script was successful"
	cat files_together.txt
else
	echo "Execution of script failed"
fi

