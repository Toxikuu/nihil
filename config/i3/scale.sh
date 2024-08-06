#!/bin/bash

pos=$1
wid=$(xdotool getactivewindow)

growfactor=2
shrinkfactor=0.5

ww=$(xdotool getwindowgeometry --shell $(xdotool getactivewindow) | grep WIDTH | cut -d= -f2)
wh=$(xdotool getwindowgeometry --shell $(xdotool getactivewindow) | grep HEIGHT | cut -d= -f2)

case $pos in
  grow )
    nww=$(echo "$ww * $growfactor" | bc)
    nwh=$(echo "$wh * $growfactor" | bc)
    xdotool windowsize $wid $nww $nwh
    ;;
  shrink )
    nww=$(echo "$ww * $shrinkfactor" | bc)
    nwh=$(echo "$wh * $shrinkfactor" | bc)
    xdotool windowsize $wid $nww $nwh
    ;;
esac
