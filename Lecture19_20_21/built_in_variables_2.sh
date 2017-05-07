#!/bin/bash

if [[ $HOSTNAME && $USER && $HOME ]] # Will test if variables are set.
then
	echo "Hostname: $HOSTNAME"
	echo "User: $USER"
	echo "Home: $HOME"
	echo "Variables are set"
else
	echo "Variables are not set"i
fi

echo ----------------------------------

colors1="red-brown-orange"
colors2="red+brown+orange"

echo "IFS=-"
IFS=- # Works as a field separator delimiter. (like the cut -d'' command and option)

echo $colors1
echo $colors2


echo -------------------------

colors3="red:::::brown::::orange"

echo "IFS=:"
IFS=:

echo $colors3

echo ----------------------------

echo $LINENO # Used in debugging for checking the line number


