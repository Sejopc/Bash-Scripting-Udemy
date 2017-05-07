#!/bin/bash

until [ "$n" = end ]
do
	echo "Type end to exit, or anything else to move on."
	read n
	echo "Variable: $n"
done
