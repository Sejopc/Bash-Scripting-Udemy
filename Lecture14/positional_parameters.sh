#!/bin/bash

MIN=10

if [ -n "$1" ] # -n returns true if the length of the string ($1) is NOT empty. Meaning, we've passed a parameter to it.
then
	echo "1st one is $1"
fi

if [ -n "$2" ]
then
	echo "2nd one is $2"
fi

if [ -n "$3" ]
then
	echo "3rd one is $3"
fi

if [ -n "$4" ]
then
	echo "4th one is $4"
fi

if [ -n "$5" ]
then
	echo "5th one is $5"
fi

if [ -n "$6" ]
then
	echo "6th one is $6"
fi

if [ -n "$7" ]
then
	echo "7th one is $7"
fi

if [ -n "$8" ]
then
	echo "8th one is $8" 
fi

if [ -n "$9" ]
then
	echo "9th one is $9"
fi

if [ -n "${10}" ]
then
	echo "10th one is ${10}" # If amount of params is greater than 10
	#from 10 on, they will need to be represented in the way: ${#_Of_Parameter}
fi


echo "List of arguments: "$*""
echo "Name of Script: \"$0\""
if [ $# -lt "$MIN" ]
then
	echo "Not enough arguments, need 10 ro run"
fi
