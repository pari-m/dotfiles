#!/bin/sh
which nvidia-settings && nvidia-settings -a InitialPixmapPlacement=0
xsetroot -cursor_name left_ptr
xset b off
setxkbmap -option ctrl:nocaps
DEFAULT_SESSION=xmonad

case $1 in
xmonad)
	exec xmonad
	;;
*)
	exec $DEFAULT_SESSION
	;;
esac
