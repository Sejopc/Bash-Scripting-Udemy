#!/bin/bash

echo "Read..."

while read var
do
	echo "$var"
done < wood.txt
