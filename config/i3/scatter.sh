#!/bin/sh

# Get the dimensions of the workspace
workspace_width=$(xdotool getdisplaygeometry | awk '{print $1}')
workspace_height=$(xdotool getdisplaygeometry | awk '{print $2}')

# Get the IDs of all floating windows in the current workspace
floating_windows=$(i3-msg -t get_tree | jq -r '
    .. | select(.type? == "workspace" and .focused == true)
    | .. | select(.type? == "floating_con" and .window != null)
    | .window')

# Function to generate a random number within a range
random_number() {
    min=$1
    max=$2
    echo $((RANDOM % (max - min + 1) + min))
}

# Position each floating window at a random location
for window in $floating_windows; do
    # Generate random positions within the workspace dimensions
    random_x=$(random_number 0 $((workspace_width - 200)))
    random_y=$(random_number 0 $((workspace_height - 200)))
    
    # Move the window to the random position
    i3-msg "[id=$window] move position $random_x $random_y"
done
