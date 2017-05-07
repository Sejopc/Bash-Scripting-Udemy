#!/bin/bash

var1=4

(( var2=var1<10?1:0 )) # In this case, there's no need to put the $ before the var name either.

echo $var2
