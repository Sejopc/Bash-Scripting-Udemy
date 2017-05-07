#!/bin/bash

echo "$$" # Gives us the PID of the current BASH shell we're using.

echo -----------------------------

for n in {0..5}
do
	echo "BASH_VERSINFO[$n] = ${BASH_VERSINFO[$n]}" # Fragmented info from the BASH_VERSION environmental variable.
done

echo -----------------------------

ROOT_UID=0

echo -n "You are: "

if [ "$UID" -eq "$ROOT_UID" ] 
then
	echo "root. Your \$UID = $UID"
else
	echo "$(whoami). Your \$UID = $UID"
fi

echo --------------------------------

someFunction(){
	echo "Function name is $FUNCNAME"
}

someFunction

echo "Outside, \$FUNCNAME = $FUNCNAME"

