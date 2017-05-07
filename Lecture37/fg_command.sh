#!/bin/bash

echo "Waiting for 5 seconds"
sleep 100 &

wait # Suspends the execution of the script until all background jobs terminate

times # shows the amount of time it took for a command to complete (in this case sleep 5)

echo "done"
