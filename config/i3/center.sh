#!/bin/bash

sw=$(xdotool getdisplaygeometry | awk '{print $1}')
sh=$(xdotool getdisplaygeometry | awk '{print $2}')

ww=$(xdotool getwindowgeometry --shell $(xdotool getactivewindow) | grep WIDTH | cut -d= -f2)
wh=$(xdotool getwindowgeometry --shell $(xdotool getactivewindow) | grep HEIGHT | cut -d= -f2)

x=$(( (sw / 2) - (ww / 2) ))
y=$(( (sh / 2) - (wh / 2) ))

xdotool getactivewindow windowmove $x $y
