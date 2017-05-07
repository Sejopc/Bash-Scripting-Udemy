#!/bin/bash

a=unset
prev=$a

while	echo "Previous variable = $prev" # Will always have the previous value because the assignation to 'prev' takes places below \/, so that's why"
	echo
	prev=$a # Now, we're assigning the new 'prev' value.
	[ "$a" != end ]
do
	echo "Input 'end' to exit or anything else to go on!"
	read a # It overwrittes the global variable 'a'
	echo "Variable = $a"
done
