#!/bin/bash

var1=10 var2=20 var3=30
echo "$var1 $var2 $var3"



# Sets a value to a null variable after printing it

var=
echo "$var"
var=9
echo "$var"

unset var
echo "$var"
