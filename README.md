# My Dotfiles
These are my dotfile configuration files for different software in Bash.
## .vimrc
This is my custom .vimrc configuration for Vim.
## .bashrc
This is my custom .bashrc configuration for Bash.
## linux.sh
This is my custom .linux.sh configuration. 
It checks if we're running linux, and if we are then it makes a .Trash directory if it doesn't exist already and then if the .vimrc file exists it will change its name to .bup_vimrc and dump a message to linuxsetup.log
It will then redirect the contents of the etc/vimrc file to a file called .vimrc in the home directory.
## cleanup.sh
This script cleans up everything done in the linux.sh script
It removes .vimrc, ~/.dotfiles/bashrc_custom in the .bashrc file in the home directory, and .Trash
## Makefile
Runs runs each script respectively, linux having a dependancy on the clean target.

## Comments
I was unable to get the linux.sh or cleanup.sh to work due to a lack of examples on how the syntax works
