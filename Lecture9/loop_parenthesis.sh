#!/bin/bash

echo {0..9}

var1=1
var2=2

{
var1=11
var2=22
}

echo "$var1 $var2"
