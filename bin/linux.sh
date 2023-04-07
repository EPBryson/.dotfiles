#!/bin/bash
#Shebang

FILE=~/.vimrc
#Checks if system type is linux and prints error otherwise
if (("$(uname)" != "Linux"))
then 
	echo "Error: This program needs to be run on a Linux system" >> linuxsetup.log
	exit
else #Makes a trash directory in the home
	mkdir -p ~/.TRASH
	if [[ -f $FILE ]];
	then #Finds if .vimrc exists and changes its name to .bup_vimrc
		mv $FILE ~/.bup_vimrc
		echo ".vimrc changed to .bup_vimrc" >> linuxsetup.log
		echo "$(cat ~/.dotfiles/etc/vimrc)" > ~/.vimrc
		echo "source ~/.dotfiles/etc/bashrc_custom" >> ~/.bashrc
	fi
fi
