#!/bin/bash

MY_SHELL="csh"

if [ "$MY_SHELL" = "bash" ]
then
	echo "You seem to like the ${MY_SHELL} shell."
elif [ "$MY_SHELL" = "csh" ]
then
	echo "You seem to like the ${MY_SHELL} shell"
else
	echo "You don't seem to like the bash or csh shells."
fi

