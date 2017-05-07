#!/bin/bash

a=unset
prev=$a

while [ "$a" != end ]
do
	echo "Input 'end' to exit or anything else to go on!"
	read a
	echo "Variable = $a"
done
