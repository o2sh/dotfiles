#!/bin/bash

export TERMINAL="termite"
export BROWSER="firefox"

if [[ "$(tty)" = "/dev/tty1" ]]; then
	pgrep -x i3 || exec startx
fi
