#!/bin/bash

wid=$(xdotool getactivewindow)

growfactor=2
shrinkfactor=0.5

ww=$(xdotool getwindowgeometry --shell $(xdotool getactivewindow) | grep WIDTH | cut -d= -f2)
wh=$(xdotool getwindowgeometry --shell $(xdotool getactivewindow) | grep HEIGHT | cut -d= -f2)

case $1 in
  hg )
    nww=$(echo "$ww * $growfactor" | bc)
    xdotool windowsize $wid $nww $wh
    ;;
  hs )
    nww=$(echo "$ww * $shrinkfactor" | bc)
    xdotool windowsize $wid $nww $wh
    ;;
  vg )
    nwh=$(echo "$wh * $growfactor" | bc)
    xdotool windowsize $wid $ww $nwh
    ;;
  vs )
    nwh=$(echo "$wh * $shrinkfactor" | bc)
    xdotool windowsize $wid $ww $nwh
    ;;
esac
