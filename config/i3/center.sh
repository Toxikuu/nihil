#!/bin/bash

xgdg() {
  xdotool getdisplaygeometry "$@"
}

xgwg() {
  xdotool getwindowgeometry "$@"
}

window=$(xdotool getactivewindow)
sw=$(xgdg | awk '{print $1}')
sh=$(xgdg | awk '{print $2}')

ww=$(xgwg --shell $window | grep WIDTH  | cut -d= -f2)
wh=$(xgwg --shell $window | grep HEIGHT | cut -d= -f2)

wing=$(xgwg --shell $window)
oldx=$(echo "$wing" | rg X | cut -d= -f2)
echo $oldx
oldy=$(echo "$wing" | rg Y | cut -d= -f2)

if (( oldx < sw )); then
  x=$(( (sw / 2) - (ww / 2) ))
else
  x=$(( sw + (sw / 2) - (ww / 2) ))
fi
y=$(( (sh / 2) - (wh / 2) ))

xdotool windowmove $window $x $y
