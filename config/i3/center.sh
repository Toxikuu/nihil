#!/bin/bash

screen_width=$(xdotool getdisplaygeometry | awk '{print $1}')
screen_height=$(xdotool getdisplaygeometry | awk '{print $2}')

window_width=$(xdotool getwindowgeometry --shell $(xdotool getactivewindow) | grep WIDTH | cut -d= -f2)
window_height=$(xdotool getwindowgeometry --shell $(xdotool getactivewindow) | grep HEIGHT | cut -d= -f2)

new_x=$(( (screen_width / 2) - (window_width / 2) ))
new_y=$(( (screen_height / 2) - (window_height / 2) ))

xdotool getactivewindow windowmove $new_x $new_y
