#!/bin/bash

LIMIT_TIME=12
TIME_INTERVAL=3

echo "This script will run for $LIMIT_TIME seconds."
echo "Press Ctrl + C to exit before the time limit."

while [ "$SECONDS" -le "$LIMIT_TIME" ] # Built-in variable $SECONDS contains the amount of seconds that the script has been running for.
do
	echo "This script has been running for $SECONDS seconds"
	sleep $TIME_INTERVAL
done

