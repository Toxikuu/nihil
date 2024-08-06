#!/bin/bash

m=10

pos=$1
wid=$(xdotool getactivewindow)

sw=$(xdotool getdisplaygeometry | awk '{print $1}')
sh=$(xdotool getdisplaygeometry | awk '{print $2}')

ww=$(xdotool getwindowgeometry --shell $(xdotool getactivewindow) | grep WIDTH | cut -d= -f2)
wh=$(xdotool getwindowgeometry --shell $(xdotool getactivewindow) | grep HEIGHT | cut -d= -f2)

case $pos in
  tl )
    xdotool windowmove $wid $m $m
    ;;
  tr )
    x=$((sw - ww - $m))
    xdotool windowmove $wid $x $m
    ;;
  bl )
    y=$((sh - wh - $m))
    xdotool windowmove $wid $m $y
    ;;
  br )
    x=$((sw - ww - $m))
    y=$((sh - wh - $m))
    xdotool windowmove $wid $x $y
    ;;
esac
