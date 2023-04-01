#!/bin/bash
#Shebang

vimrc = $(find "$HOME" -type f -name ".vimrc")
#Checks if system type is linux and prints error otherwise
if (("$(uname)" != "Linux"))
then 
	echo "Error: This is meant to be run on a Linux system" >> linuxsetup.log
	exit
else #Makes a trash directory in the home
	mkdir ~/.Trash
	if (($vimrc == ".vimrc"))
	then #Finds if .vimrc exists and changes its name to .bup_vimrc
		mv .vimrc .bup_vimrc
		echo "We changed .vimrc to .bup_vimrc"
		echo "$../.etc/vimrc" > ~/.vimrc
		echo "source ~/.dotfiles/etc/bashrc_custom" >> ~/.bashrc
	fi
fi
