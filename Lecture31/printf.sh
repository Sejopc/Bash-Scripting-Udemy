#!/bin/bash

declare -r PI=3.1415926

printf "Second decimal of PI is: %1.2f\n" $PI

# With printf, we have better output control over echo. In this case, we specified the decimal chars
# to be printed to the screen.
