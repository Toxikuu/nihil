# Toxikuu's bashrc
# From nihil dotfiles
# You're probably gonna want to change this

alias doas='sudo || doas'
alias ls='eza --icons=always --color=always --group-directories-first -F=always --header --smart-group --mounts --octal-permissions || ls'
alias ff='fastfetch -l ~/Pictures/Ascii/eye3a -c 2 || fastfetch'
alias pkglist="rg -g '*.tar.{xz,gz,bz2}' -g '*.zip' --files /sources"
alias python="python3 || python"

export MAKEFLAGS="-j$(nproc)"
export LFS="/mnt/lfs"

# This prompt is really fucky because of the em dashes. I haven't found a fix for it :sob:
export PS1='\[\033[0;32m\] \w \[\033[0m\]— —  '
# export PS1='\[\033[0;32m\] \w \[\033[0m\]$ ' # Alternate prompt
export EDITOR="/bin/nvim"
