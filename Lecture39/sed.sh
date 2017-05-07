#!/bin/bash

E_BADARGS=65

if [ $# -eq 0 ]
then
	echo "Usage: `basename $0` file"
	exit $E_BADARGS
else
	for i # Since we're not specifing the "in [array of things]" condition, it will iterate over the arguement(s) passed to the script, in this case, file "wood.txt"
	do
		sed -e '1,/^$/d' -e '/^$/d' $i # i will contain the name of passed paremeters to the script (in this case, wood.txt)
	done
fi

