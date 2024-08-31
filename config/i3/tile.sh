#!/bin/bash

m=10

wid=$(xdotool getactivewindow)

sw=$(xdotool getdisplaygeometry | awk '{print $1}')
sh=$(xdotool getdisplaygeometry | awk '{print $2}')

ys=$((sh - 2 * $m))
xs=$((sw / 2 - 2 * $m))

case $1 in
  left )
    xdotool windowmove $wid $m $m
    xdotool windowsize $wid $xs $ys
    ;;
  right )
    xdotool windowsize $wid $xs $ys
    ww=$(xdotool getwindowgeometry --shell $(xdotool getactivewindow) | grep WIDTH | cut -d= -f2)
    x=$((sw - ww - $m))
    xdotool windowmove $wid $x $m
    ;;
esac
