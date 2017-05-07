#!/bin/bash

if [ ! -z $1 ]
then
	process="ps -e | grep $1"
fi

eval $process
