#!/bin/bash

num=1100
let "num -= 10"
echo "$num"


var=${num/10/B} # Replaces the number 10 with B
echo $var
 

num2=10
var2=${num2/10/A}
echo "$var2"

varValue=A0
let "varValue += 1"
echo $varValue  # Result will be 1, bcuz bash sets the integer value of a string to 0

var3=hey1100
echo "$var3"
num3=${var3/hey/20}
echo "$num3"

var4=
echo "var4=$var4"
let "var4+=10"
echo $var4
