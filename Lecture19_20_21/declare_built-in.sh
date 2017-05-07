#!/bin/bash

declare -r var="Hello" # I'm declaring the variable as a read-one variable, so if you try to change its value later on, you will get an error
echo "\$var = $var"

var="What's up?" # It won't let you...
echo $var

declare -i var_i=10 # I'm declaring the variable to accept only interger values. If you change its value to a string, it will output a 0 instead.
echo "\$var_i = $var_i"

var_i="Blue"
echo $var_i
