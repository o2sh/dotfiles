#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
PS1='\[[\e[31m\u\e[39m@\h \e[1;34m\W\e[0;39m]\]\$ '
# Some aliases
alias vi="vim"
alias ll="ls --color=auto -al"
