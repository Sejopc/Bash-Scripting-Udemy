#!/bin/bash

declare -a colors

echo "Your favorite colors separated by space: "
read -a colors

count=${#colors[@]}
 
i=0

while [ "$i" -lt "$count" ]
do
	echo ${colors[$i]}
	(( i ++ ))
done

echo ${colors[*]}

unset colors[2]
echo ${colors[*]}

unset colors
echo "No colors. Colors have gone"

echo ${colors[*]}
