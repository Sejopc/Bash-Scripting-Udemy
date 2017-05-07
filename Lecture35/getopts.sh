#!/bin/bash

#OPTARG basicamente coge lo que este a la derecha de la opcion (i.e  ./myscript -s 45), $OPTARG will be 45

#OPTIND is the number of options found by getopts. Immediately found after a getops while loop.

# A great example of getopts: http://stackoverflow.com/questions/16483119/example-of-how-to-use-getopts-in-bash

# A great example of OPTIND: http://unix.stackexchange.com/questions/214141/explain-the-shell-command-shift-optind-1/214151

# And to better understand OPTIND: http://stackoverflow.com/questions/14249931/how-does-the-optind-variable-work-in-the-shell-builtin-getopts

# Greaaaat explanation of "shift $((OPTIND -1)) from Udemy: https://www.udemy.com/bash-programming/learn/v4/questions/1138984
while getopts :dm option
do
	case $option in
		d) d_option=1;;
		m) m_option=1;;
		*) echo "Usage: -dm"
	esac
done

day=`date | awk '{print $1 " " $2}'`

if [[ ! -z $d_option ]]
then
	echo "Day is: $day"
fi

month=`date | awk '{print $3}'`
if [[ ! -z $m_option ]]
then
	echo "Month is: $month"
fi

shift $(($OPTIND - 1))
