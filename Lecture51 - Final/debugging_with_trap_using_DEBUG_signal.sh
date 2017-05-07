#!/bin/bash

trap 'echo "Listing variables: a = \"$a\""' DEBUG

a=3;	line=$LINENO # LINENO variable prints the current line.

echo "	\$a initialized to $a on line $line"

let "a *= 2"; line=$LINENO

echo "	\$a multiplied by 2 on line $line"

