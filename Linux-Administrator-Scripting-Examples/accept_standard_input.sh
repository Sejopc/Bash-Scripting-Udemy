#!/bin/bash

read -p "Enter a username: " USER
echo "Archiving user: $USER"

# Lock the account

passwd -l $USER

# Create an archive of the home directory

tar -cf /archive/${USER}.tar.gz /home/${USER}
