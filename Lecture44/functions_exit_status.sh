#!/bin/bash

# When there's a return statement, the function will terminate, and the rest of the code will not be
# executed.

#ERROR CODES
E_PARAM_ERR=250 # Incorrect number of parameters passed
EQUAL=251 # Both parameters are the same value

function_max()
{
	if [ $# -gt 2 ]
	then
		return $E_PARAM_ERR
	fi

	if [ -z $2 ]
	then
		return $E_PARAM_ERR
	fi

	if [ "$1" -eq "$2" ]
	then
		return $EQUAL
	else
		if [ "$1" -gt "$2" ]
		then
			return $1
		else
			return $2
		fi
	fi
}

function_max 10 11 12
return_value=$?

if [ "$return_value" -eq $E_PARAM_ERR ]
then
	echo "Function needs 2 parameters"
elif [ "$return_value" -eq $EQUAL ]
then
	echo "Numbers are equal, please make them different"
else
	echo "Max number is $return_value"
fi

# A maximum value a function can return is 255
