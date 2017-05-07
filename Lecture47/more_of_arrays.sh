#!/bin/bash

arr1=( '' )  # Even thought the array is empty, it still have an "empty" element
echo ${arr1[*]}
echo ${#arr1[@]}

echo --------------------

arr1=()  # Now, the array is indeed completely empty
echo ${arr1[*]}
echo ${#arr1[@]}

echo --------------------

FILE=wood.txt
declare -a arr_file
arr_file=( `cat "$FILE"` )
echo ${arr_file[*]}
size=${#arr_file[*]}
echo "Array size is $size"
