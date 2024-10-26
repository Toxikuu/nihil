#!/bin/bash

wid=$(xdotool getactivewindow)

wx=$(xdotool getwindowgeometry --shell $wid | grep X | cut -d= -f2)
wy=$(xdotool getwindowgeometry --shell $wid | grep Y | cut -d= -f2)

case $1 in
  left )
    xdotool windowmove $wid $((wx - 1920)) $wy
    ;;
  right )
    xdotool windowmove $wid $((wx + 1920)) $wy
    ;;
esac
