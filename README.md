# nihil
My dotfiles for LFS. Codenamed nihil.

## Screenshots
![Music](https://github.com/Toxikuu/nihil/blob/main/screenshots/1.png)
![Discord](https://github.com/Toxikuu/nihil/blob/main/screenshots/2.png)
![Neovim](https://github.com/Toxikuu/nihil/blob/main/screenshots/3.png)
![Browser](https://github.com/Toxikuu/nihil/blob/main/screenshots/4.png)

## Install
### Dotfiles
NOTE: The below commands were designed for bash; they may or may not work in other shells. Additionally, the commands should be executed as the user whose dotfiles you are targetting. I.e., don't run them as root unless you want the root user to have an i3 config for some reason.

The below commands install the dotfiles.
```bash
# Backup
mv -iv ~/.config{,.bak}
mv -iv ~/.xinitrc{,.bak}
mv -iv ~/.bashrc{,.bak}
mv -iv ~/.bash_profile{,.bak}

# Cloning
git clone https://github.com/Toxikuu/nihil.git && cd nihil

# Installation
cp -riv config/* ~/.config/
cp -riv {,~/.}bashrc
cp -riv {,~/.}bash_profile
```

### Extras
Extras include:
- Userstyles
- Obsidian theme


