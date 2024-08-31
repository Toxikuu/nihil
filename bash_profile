# Toxikuu's bash_profile
# From nihil dotfiles
# You're probably gonna want to change this

if [ -f "$HOME/.bashrc" ]; then
  source $HOME/.bashrc
fi

# Starts X on tty1 on login
if [[ "$(tty)" == "/dev/tty1" ]]; then
  if [[ ! $DISPLAY && $XDG_VTNR -eq 1 ]]; then
    startx
  fi 
fi
