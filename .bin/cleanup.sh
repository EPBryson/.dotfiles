#!/bin/bash

#removes .vimrc form ~
rm ~/.vimrc
sed -i 's/source ~/.dotfiles/bashrc_custom/ /g'
rm -r ~/.Trash
