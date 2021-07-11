#!/bin/bash

# Install IRC client - irsii instead of weechat because fewer
# dependencies
sudo apt install irssi

# Add files to bashrc
mkdir -p ~/.loopduck0
./bashrc_config.sh ./bashrc/aliases ~/.loopduck0/aliases
