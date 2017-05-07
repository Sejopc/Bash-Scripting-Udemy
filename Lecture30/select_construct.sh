#!/bin/bash

PS3='Pick a color: '

select color in "brown" "grey" "black" "orange" "red"
do
	echo "You selected this color: $color"
	break
done

