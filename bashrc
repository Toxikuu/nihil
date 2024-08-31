# Toxikuu's bashrc
# From nihil dotfiles
# You're probably gonna want to change this

if command -v sudo > /dev/null; then
  alias doas="sudo"
elif command -v doas > /dev/null; then
  alias sudo="doas"
fi
if command -v eza > /dev/null; then
  alias ls='eza --icons=always --color=always --group-directories-first -F=always --header --smart-group --mounts --octal-permissions'
fi
alias ff='fastfetch -l ~/Pictures/Ascii/eye3a -c 2 || fastfetch'
alias pkglist="rg -g '*.tar.{xz,gz,bz2}' -g '*.zip' --files /sources"
alias python="python3"

export MAKEFLAGS="-j$(nproc)"
export LFS="/mnt/lfs"
export EDITOR="/bin/nvim"

bold=$(tput bold)
normal=$(tput sgr0)
red=$(tput setaf 1)
green=$(tput setaf 2)

# This prompt is really fucky because of the em dashes. I haven't found a fix for it :sob:
export PS1="${green}${bold} \w ${normal}— —  "
export PS1="${green}${bold} \w ${normal}${bold}${normal}$ " # Alternate prompt
export SUDO_PROMPT=" ${bold}[${red}#${normal}${bold}]${normal} "
