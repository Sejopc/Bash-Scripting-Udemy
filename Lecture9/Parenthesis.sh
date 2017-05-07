#!/bin/bash

var=5
(var=10;) # () use to groups a set of commands. Variables inside parenthesis cannot be read by the shell.

echo $var


Colors=(red white brown purple) # Initialized array.

