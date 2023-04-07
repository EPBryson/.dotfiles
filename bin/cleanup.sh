#!/bin/bash

##removes ".vimrc" from ~
rm -f ~/.vimrc
##replaces the given string with nothing
sed -i "s/source \~\/\.dotfiles\/etc\/bashrc_custom//g" ~/.bashrc
##removes the directory "TRASH" from ~
rm -rf ~/.TRASH
