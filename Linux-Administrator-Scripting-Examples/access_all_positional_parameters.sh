#!/bin/bash

echo "Executing script $0"

for USER in $@
do
	echo "Archiving user: $USER"
	# Lock account
	passwd -l $USER
	# Create archive of the home directory
	tar -cf /archive/${USER}.tar.gz /home/${USER}
