#!/bin/bash

cursorxcoord=$(xdotool getmouselocation | awk '{print $1}' | cut -d: -f2)

if [ $cursorxcoord -gt 1920 ]; then
  # screenshot the second monitor
  maim -g 1920x1080+1920+0 | xclip -selection clipboard -t image/png
else
  # screenshot the right monitor
  maim -g 1920x1080+0+0 | xclip -selection clipboard -t image/png
fi
