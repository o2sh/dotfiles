#!/bin/bash

export TERMINAL="termite"
export BROWSER="firefox"
export EDITOR="vim"

if [[ "$(tty)" = "/dev/tty1" ]]; then
	pgrep -x i3 || exec startx
fi
