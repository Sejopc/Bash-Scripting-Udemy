#!/bin/bash

count=0

cat file1 | while read line
		do
			echo $line
			(( count++ )) # This is not gonna work outside the loop, so once we print the $count number, it will show as 0.
		done
	
echo "Number of lines is: $count"

echo --------------------------------------------------

count2=0

exec 3<>file1 # This will open the file1 file, and assign the file descriptor 3 to it.

while read line <&3
do
	{
		echo "$line"
		(( count2 ++ )); # This one will work.
	}
done

exec 3>&- # Close file descriptor 3

echo "Number of read lines is $count2"
