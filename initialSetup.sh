#!/bin/bash
#

echo "Installing dependencies"
op=$(sudo dnf install util-linux-user -y)
echo $op
echo "Installing Zsh"
op=$(sudo dnf install zsh -y)
echo $op
echo "Making zsh a default shell"
shell=$(which zsh)
op=$(chsh -s $shell)
echo $op
