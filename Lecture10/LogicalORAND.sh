#!/bin/bash

var=1

if [ "$var" -gt 0 ] || [ "$var" -eq 10 ] #Or you can put || to make it an OR statement
then
	echo "One or both conditions are true"
else
	echo "Both conditions are false"
fi

