#!/bin/bash

echo "Do you really want to install dotfiles? (y/N)"
read answer

if [ "$answer" != "${answer#[Yy]}" ] ;then
	echo Yes
else
	echo No
	exit
fi

echo "Installation started..."

# Install script
echo "" >> ~/.bashrc
echo "# Alias for dotfiles repo" >> ~/.bashrc
echo "alias dot='/usr/bin/git --git-dir=~/dotfiles --work-tree=~'" >> ~/.bashrc

echo "Complete!"
