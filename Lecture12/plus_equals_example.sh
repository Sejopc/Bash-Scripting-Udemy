#!/bin/bash

var=
let "var+=10"
echo "$var"
let "var = var + 10"
echo "$var"
