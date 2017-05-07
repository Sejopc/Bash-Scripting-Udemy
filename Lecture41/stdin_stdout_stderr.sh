#!/bin/bash

file=wood.txt
echo "This line is sent to $file" 1> $file

something 2>> wood.txt

something >> wood1.txt 2>&1

echo -----------------

echo 12345 > fd.txt
exec 3<>fd.txt # Is used to assign a file descriptor to a particular files (0,1,2 are already reserved)
# To understand a bit better, read: http://stackoverflow.com/questions/7082001/file-descriptors
read -n 2 <&3 # We read only 2 characters from that file
echo -n . >&3 # Then we put a decimal point
exec 3>&- # We then close the file

cat fd.txt
