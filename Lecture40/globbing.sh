# ls -l {pattern, pattern} 
# Example:
# ls -l {w*,*oo*}
# Above command will match any files that begin with 'w' (doesn't matter what has after it), and files that begin with any letter(s), and then have 'oo' and then some other letter(s) after it

#!/bin/bash

shopt -s nullglob

for file in /home/obito/
do
	ls -la "$file"
	#	shopt -s nullglob   # Either way work (by putting shopt command before for loop, or within it)
done
