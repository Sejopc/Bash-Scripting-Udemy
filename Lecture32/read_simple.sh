#!/bin/bash

echo "Enter a string"
read -r var # -r argument doesn't interpret \ (back-slashes). So if you type test\\ it will literally print test\\
echo "$var"
