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
- NightTab theme
- Obsidian theme

To install my userstyles, install the stylus extension in your browser. Click the extensions button, then open the stylus extension. Next, click manage, and import the userstyles-nihil.json from the extra folder in this repo.

To install my NightTab, install the NightTab extension in your browser. Open a new tab, enter the NightTab settings and, under data, click import from file. Select nighttab-nihil.json from the extra folder in this repo.

To install my Obsidian theme, run the following command from the repo folder (assuming your Obsidian vault is ~/Vault):
```bash
cp -riv extra/Obsidian/Nihil ~/Vault/.obsidian/themes/
```

I won't be sharing my Obsidian setup, but feel free to copy or take inspiration from the showcase video.
