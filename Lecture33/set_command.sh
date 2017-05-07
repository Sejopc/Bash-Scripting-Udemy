#!/bin/bash

set +o history # disables history command to save "commands"
set -o history # enables history command to save "commands"

# For bit more of info: set --help

echo "Before setting the parameters"
echo "\$1 = $1"
echo "\$2 = $2"

set $(echo "First Second") # Sets "First" to the $1 parameter, and "Second" to $2.

echo "After setting the parameters"

echo "\$1 = $1"
echo "\$2 = $2"
