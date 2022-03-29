# My dotfiles
(This repo is work in progress)

## About:


## Screenshots:
Coming soon.

## Workflow:
Coming soon.

## Installation (Arch Linux):
**Disclaimer:** These steps are supposed to be run on a fresh Arch installation to get my current setup. This configuration is not guaranteed to work on your system, remember to make backups!
### From Arch official repositories:
```
sudo pacman -S
```
- git
- i3
- picom
- xrandr
- nitrogen
- rofi
- dunst
- polybar
- yay
- zsh (w/ oh-my-zsh and powerlevel10k theme)
### From the AUR:
Install `yay` first
```
sudo pacman -S --needed git base-devel && git clone https://aur.archlinux.org/yay.git && cd yay && makepkg -si
```
then run:
```
yay -S
```
- nerd-fonts-complete
### Additional software
```
sudo pacman -S 
```
```
yay -S
```
### Replicate my setup
⚠️**Remember to backup your files first!!**

Follow these steps or use the all-in-one command at the bottom.

Clone this repo:
```
git clone https://github.com/TheAlphaCeph/dotfiles.git
```
Copy my .config files to your .config folder:
```
cp dotfiles/.config/* ~/.config
```
Save the wallpapers in your Pictures directory and choose one using `nitrogen`
```
cp dotfiles/Pictures/wallpapers ~/Pictures
nitrogen ~/Pictures/wallpapers/
```
