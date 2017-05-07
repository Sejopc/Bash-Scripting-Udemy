#!/bin/bash

trap 'echo "Listing variables: m=$m n=$n o=$o"' EXIT 

m=1
n=2
o=3

let "sum = $m+$n+$o"

echo "The sum is $sum"
