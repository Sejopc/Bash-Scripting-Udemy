#!/bin/bash

E_NOPATTERN=71
DICT=/usr/share/dict/words

if [ -z "$1" ]
then
	echo 
	echo "Usage: `basename $0` \"pattern,\""
	echo "where \"pattern\" is in the form"
	echo "ooo..oo.o..."
	echo
	echo "The o's are letters you already know,"
	echo "and the period are missing letters."
	echo "Letter and period can be in any position."
	echo "For example: w...i....n"
	echo
	exit $E_NOPATTERN
fi

grep ^"$1"$ $DICT
