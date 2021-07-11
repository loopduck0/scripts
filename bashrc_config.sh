#!/bin/bash

# Input file
input=$1

# Output file
config_file=$2

# Write file
#if [ -f "$config_file" ]; then
    # echo "WARNING: $config_file already exists. Would you like to overwrite this file? (Y/n)" 
#fi

cp -vb $input $config_file
chmod a+x $config_file

# Add to bashrc
if grep -q "$config_file\$" ~/.bashrc; then
    echo "$config_file is already in bashrc"
else
    echo "Adding $config_file to bashrc"
    echo "source $config_file" >> ~/.bashrc
fi
