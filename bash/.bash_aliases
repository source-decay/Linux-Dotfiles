# my aliases for Bash

alias ll='ls -la'					#show files with long listing
alias l.='ls -d .* --color=auto'	#show hidden files
alias cls='clear'					#clear terminal

# prompt is deleting more than 3 files
alias rm='rm -I --preserve-root'

# if user is not root, pass all cmds via sudo
if [ $UID -ne 0 ]; then
  alias update='sudo apt-get update'	#update computer
  alias upgrade='sudo apt-get upgrade'	#upgrade computer
fi
