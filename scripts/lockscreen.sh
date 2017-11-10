#!/bin/bash

if ! (pgrep i3lock)
then
	scrot /tmp/screensaver.png
	convert /tmp/screensaver.png -blur 0x5 /tmp/screensaver.png
	i3lock -i /tmp/screensaver.png -e -f
fi
