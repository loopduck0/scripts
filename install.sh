#!/bin/bash


# apt install
echo "Installing debian packages..."
# irsii instead of weechat because fewer dependencies
sudo apt install irssi

# vimrc
echo
echo "Setup .vimrc..."
cp -vb vimrc ~/.vimrc

# bashrc
echo
echo "Setup .bashrc..."
mkdir -p ~/.loopduck0
./bashrc_config.sh ./bashrc/aliases ~/.loopduck0/aliases
