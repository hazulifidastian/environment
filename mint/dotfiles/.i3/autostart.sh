#!/bin/bash

# Desktop environment
gnome-settings-daemon &
gnome-keyring-daemon

## Merge Xresources
#xrdb -merge ~/.Xresources &

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

# wifi manager
LC_ALL=C nm-applet &
#LC_ALL=C /usr/sbin/CopyAgent &
#LC_ALL=C screencloud &

# notifier
dunst &

# refresh
xrefresh &

# special keys
#xmodmap /home/efha/.Xmodmap &

# configure natural scrolling for touchpad
# configure normal scrolling for mouse
#xinput --set-button-map 'Logitech Unifying Device. Wireless PID:1017' 1 2 3 4 5
#xinput --set-button-map 11 1 2 3 4 5

# start up scratchpad apps

#/usr/bin/subl && i3-msg move scratchpad
#/usr/bin/subl3
#sleep 1s && /usr/sbin/i3-msg '[title="Sublime Text$"]' move scratchpad

# Telegram

#i3-msg 'workspace 3; exec telegram'


#sleep 1s && for ((n=0;n<3;n++))
#do
#  i3-msg '[title="Telegram"]' resize shrink width; resize shrink width
#done


# Chrome

#sleep 1s && i3-msg 'workspace 1; exec google-chrome-stable'


# all done
exit 0
