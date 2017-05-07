#!/bin/bash

var=20

if [ "$var" -gt 15 ]
then : # If if condition is true, nothing will happen because of the ':'
else
	echo $var
fi

