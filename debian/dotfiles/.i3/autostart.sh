#!/bin/bash

# Desktop environment
gnome-settings-daemon &
gnome-keyring-daemon

feh --bg-fill /home/efha/Pictures/Wallpapers/simple3.png

## Merge Xresources
xrdb -merge ~/.Xresources &

# default volume
pactl set-sink-volume @DEFAULT_SINK@ '30%' &

# lcd brightness
xbacklight -set 30 &

# disable beeps
xset -b &

# dvorak for programmer, for great comfort
#setxkbmap -layout us -variant dvp

# dpms timeouts. standby -> suspend -> off
xset dpms 600 1200 2000 &

# network manager
LC_ALL=C nm-applet &

# notifier
dunst &

# refresh
xrefresh &

exit 0
