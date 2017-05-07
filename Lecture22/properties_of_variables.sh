#!/bin/bash

x=8/2
echo "\$x = $x"

let y=8/2 #If we don't use let command, the output will literally be: 8/2, UNLESS we declare the variable as a intenger, in the form: declare -i x
echo "\$y = $y" 

echo --------------------------------------------------

declare -i z
z=8/2
echo "\$z = $z"

echo --------------------------------------------------

# To declare an array, we use: declare -a 

declare -a x=(1 2 3 4 5)

for i in {0..4}
do
	echo "${x[$i]}"
	let "i += i" # Even without let, it works (increases i)
done

echo --------------------------------------------------

declare -f someFunction

someFunction()
{
	echo "Hey, what's up?"
}

someFunction

echo -----------------------------------------------------

declare -x var_x=10
echo "$var_x"


