#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
PS1='\[\033[01;31m\]\u@\h\[\033[01;34m\] $PWD \[\033[00m\]$ '
# Some aliases
alias vi="vim"
alias ll="ls --color=auto -al"
