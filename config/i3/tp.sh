#!/bin/bash

m=10

wid=$(xdotool getactivewindow)
wx=$(xdotool getwindowgeometry --shell $wid | grep X | cut -d= -f2)

sw=$(xdotool getdisplaygeometry | awk '{print $1}')
sh=$(xdotool getdisplaygeometry | awk '{print $2}')

ww=$(xdotool getwindowgeometry --shell $(xdotool getactivewindow) | grep WIDTH | cut -d= -f2)
wh=$(xdotool getwindowgeometry --shell $(xdotool getactivewindow) | grep HEIGHT | cut -d= -f2)

mx=1920
if [ $wx -lt 1920 ]; then
  mx=0
fi

case $1 in
  tl )
    xdotool windowmove $wid $((m + mx)) $m
    ;;
  tr )
    x=$((sw - ww - m + mx))
    xdotool windowmove $wid $x $m
    ;;
  bl )
    y=$((sh - wh - m))
    xdotool windowmove $wid $((m + mx)) $y
    ;;
  br )
    x=$((sw - ww - m + mx))
    y=$((sh - wh - m))
    xdotool windowmove $wid $x $y
    ;;
esac
