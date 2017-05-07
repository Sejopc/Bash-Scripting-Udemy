#!/bin/bash

var=hey # Bash sets the value of the string to 0. So when you do an addition (+), it will only count that number as the total.
let "var += 10"
echo $var

