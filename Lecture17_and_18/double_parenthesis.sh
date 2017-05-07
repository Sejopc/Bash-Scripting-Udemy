#!/bin/bash

(( 2 > 1 ))
echo "Exit status is $?"

(( 2 < 1 ))
echo "Exit status is $?"

(( 2 - 1 ))
echo "Exit status is $?"

(( 2 - 2 ))
echo "Exit status is $?"

(( 2 + 2 ))
echo "Exit status is $?"

# Basically, if the result of the arithmetic operation within (( )) is 0, the exit status will be 1 or false. If the result of the arithmetic operatio within (( )) is a non-zero value, the exit status will be 0 or true.  

# In general, we're evaluating the statemtn within the (( )). Is it true, or is it false?
