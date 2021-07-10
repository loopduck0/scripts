#!/bin/bash

# Installs gh tool for Debian/Ubuntu following (as of 10 July 2021)
# https://github.com/cli/cli/blob/trunk/docs/install_linux.md
curl -fsSL https://cli.github.com/packages/githubcli-archive-keyring.gpg | sudo gpg --dearmor -o /usr/share/keyrings/githubcli-archive-keyring.gpg
echo "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/githubcli-archive-keyring.gpg] https://cli.github.com/packages stable main" | sudo tee /etc/apt/sources.list.d/github-cli.list > /dev/null
sudo apt update
sudo apt install gh

# Clone loopduck0/scripts
gh auth login  # https://docs.github.com/en/github/authenticating-to-github/keeping-your-account-and-data-secure/creating-a-personal-access-token#creating-a-token
gh repo clone loopduck0/scripts

# Setup git configs
git config --global user.email "loopduck0@gmail.com"
git config --global user.name "loopduck0"
git config --global core.editor vim
