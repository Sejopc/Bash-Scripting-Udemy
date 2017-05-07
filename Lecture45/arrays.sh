#!/bin/bash

arr[0]=20
arr[1]=30

echo -e "${arr[0]} \n${arr[1]}"

echo -----------------------

#Another way to set an array is to declare it, as shown below
declare -a array

array=(10 20 30 40 50)

echo -e "${array[0]} \n${array[1]} \n${array[2]} \n${array[3]} \n${array[4]}"

echo ---------------------------

#Another way to assign elements to an array

array2=( [0]=first [1]="second" [7]=45 )
echo -e "${array2[0]} \n${array2[1]} \n${array2[7]}"

echo ---------------------------

#Useful information

a=something123
echo ${a[*]} # Will print out 'something123' as it is consider the 1st element on the array 'a', and * stands for 'all'.
echo ${a[0]} # Will still print out 'something123' as it's the first element on the array 'a'
echo ${a[1]} # Will not print out anything because there's no 2nd element on the array
echo ${#a[@]} # Will print out the size of the array.

echo ------------------------------

array3=( zero one two )

echo ${array3[0]}

echo ${#array3[0]} # Will print out the lenght or size of the first element, which in this case is 4 (z e r o )
echo ${#array3[*]} # Will print out the size of the array. Is the same as ${#array3[@]}
