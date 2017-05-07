#!/bin/bash

var1=10

echo $(( var2=var1<20?1:0)) # Is var1 less than 20? If yes, assign to var2 value 1, if not, assign to var2 value 0. And that value will be echoed.


# Save as above

if [ "$var1" -lt 20 ]
then 
	var2=1
else
	var2=0
fi

echo $var2
