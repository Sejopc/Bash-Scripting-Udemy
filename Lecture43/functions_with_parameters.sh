#!/bin/bash

_()
{
	echo "First argument is $1, second argument is $2"
}

var1=10
var2=20

_ $var1 $var2	

echo ---------------------------------

# Another example

_ $1 $2 # And then, call the script with 2 parameters (i.e functions_with_parameters.sh 10 20)
