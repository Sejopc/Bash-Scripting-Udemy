#!/bin/bash

debug_condition(){
	E_CONDITION=99

	if [ ! $1 ] # Basically means, if first parameter is evaluated to "false" (not true), then...
		# So, in other words, if statement will be true only if the condition is false.
	then
		echo "File $0: Condition failed"
		exit $E_CONDITION
	else
		return
	fi

}

a=3
b=2

if [ "$a" -lt "$b" ]
then
	(( a++ ))
	echo "$a"
fi

condition="$a -lt $b"
debug_condition "$condition"
