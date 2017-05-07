#!/bin/bash

num=4

if [ "$num" -gt 0 ]
then
	if [ "$num" -lt 5 ]
	then
		if [ "$num" -gt 3 ]
		then
			echo "Greater than 0, Lesser than 5, Greater than 3"
		fi
	fi
elif [ "$num" -eq 0 ]
then
	echo "Equals 0"
else
	echo "I have no idea"
fi
