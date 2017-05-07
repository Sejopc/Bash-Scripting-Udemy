#!/bin/bash

# set --    	(without a variable), will unset all the positional parameters.
# set -- $var   The positional parameters are set to arguments (in this case $var). Meaning, if var contains 1 2 3, $1 will be 1, $2 will be 2, $3 will be 3. Spaces among them denote each positional parameter

var="1 2 3"
echo $var
set -- $var

i=1
while [ $i -le $# ]
do
	echo -n "\$$i = "
	eval echo "\$$i"
	(( i++ ))
done

set --
echo "\$1 = $1"
echo "\$2 = $2"
echo "\$3 = $3"

