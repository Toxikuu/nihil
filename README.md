# Nihil
My dotfiles for LFS. Codenamed Nihil.

## Screenshots
![Music](https://github.com/toxikuu/nihil/blob/main/screenshots/1.png)
![Discord](https://github.com/toxikuu/nihil/blob/main/screenshots/2.png)
![Neovim](https://github.com/toxikuu/nihil/blob/main/screenshots/3.png)
![Browser](https://github.com/toxikuu/nihil/blob/main/screenshots/4.png)

## Install
### Dotfiles
NOTE: The below commands were designed for bash; they may or may not work in other shells. Additionally, the commands should be executed as the user whose dotfiles you are targetting. I.e., don't run them as root unless you want the root user to have an i3 config for some reason.
NOTE: Noto fonts (emoji and cjk) are recommended but not provided.

The below commands install the dotfiles.
```bash
# Backup
mv -iv ~/.config{,.bak}
mv -iv ~/.xinitrc{,.bak}
mv -iv ~/.bashrc{,.bak}
mv -iv ~/Wallpapers{,.bak}
mv -iv ~/.bash_profile{,.bak}

# Cloning
git clone https://github.com/toxikuu/nihil.git && cd nihil
mkdir Iosevka && pushd Iosevka
curl -OL https://github.com/ryanoasis/nerd-fonts/releases/latest/download/Iosevka.tar.xz
tar xvf Iosevka.tar.xz && rm -v $_
popd

# Installation
sudo cp -riv Iosevka /usr/share/fonts/
cp -riv config/* ~/.config/
cp -iv {,~/.}bashrc
cp -iv {,~/.}bash_profile
cp -riv wallpapers ~/Wallpapers

# Configuration
echo "exec i3" >> ~/.xinitrc
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

## Credits
### People
Huge thanks to Alepheia and Zani for inspiring me to try LFS. Thank you to Zeckma for creating and helping me through the GLFS book. I'd also like to thank the maintainers of the LFS{,-multilib} and BLFS books for making this possible, as well as the AUR maintainers whose PKGBUILDs I referenced for TLFS. Also thank you to the members of the LFS Discord for being cool people :)

### Wallpapers 
I got paintedgirl.png from wallhaven. As for flowers.png, I don't remember. I did some light color grading in Photopea of the original flowers.png.

### Fonts
The only custom font used is [Iosevka Nerd Font](https://www.nerdfonts.com/font-downloads).

### Themes
Most of the themes are just edits of [Catppuccin](https://catppuccin.com/ports)'s various themes, with colors inspired by the color palette in Alepheia's LFS showcase.

**Exceptions:**
 - The Rofi theme is an edit of the [squared nord theme](https://github.com/newmanls/rofi-themes-collection).
 - The Neovim theme is [NvChad](https://nvchad.com/docs/quickstart/install/) with the yoru theme.

**Issues:**
- The Zathura theme has an issue with selection highlights. (I don't know how to make the highlights transparent.)
