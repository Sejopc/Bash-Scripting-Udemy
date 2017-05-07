#!/bin/bash

[ -z "$1" ] || [ ! -f "$1" ] || (rm -f "$1"; echo "$1 removed")

echo ------------------------

a=1
b=2
c=3

[ "$a" -gt "$b" ] || [ "$b" -gt "$c" ] || ( (( c += a + b)) ; echo "$c")
