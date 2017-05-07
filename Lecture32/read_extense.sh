#!/bin/bash

#up=$'\x1b[A'
down=$'\x1b[B'
left=$'\x1b[D'
right=$'\x1b[C'

read -s -n3 -p "Press an arrow key: " arrow

case "$arrow" in
	$up) echo "You pressed up";;
	$down) echo "You pressed down";;
	$left) echo "You pressed left";;
	$right) echo "You pressed right";;
esac
