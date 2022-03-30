# My dotfiles
(This repo is work in progress)

## About:


## Screenshots:
Coming soon.

## Workflow:
Coming soon.

## Full installation on a fresh Arch Linux system:
These steps are supposed to be run on a fresh Arch installation to get my current setup. This configuration is not guaranteed to work on your system, remember to make backups!
### From Arch official repositories:
```
sudo pacman -S
```
- git
- i3
- cmake
- kitty
- picom
- xrandr
- nitrogen
- mpv
- rofi
- dunst
- polybar
- pulseaudio
- vim
- zsh (w/ oh-my-zsh and powerlevel10k theme)

### From the AUR:
Note: it is recommended to edit /etc/makepkg.conf following [this guide](https://gist.github.com/beci/c737c89685a667053fe02f986d59ca44) for faster compiling time, or you can just use my file (I also edited `PKGEXT='.pkg.tar'`):
```
cp dotfiles/etc/makepkg.conf /etc
```
Install `yay`:
```
sudo pacman -S --needed git base-devel && git clone https://aur.archlinux.org/yay.git && cd yay && makepkg -si
```
then run:
```
yay -S
```
- nerd-fonts-complete
- librewolf

### Replicate my setup:
⚠️ **Remember to backup your files first!!**

Clone this repo, use my .config files, and set the wallpapaper:
```
git clone https://github.com/TheAlphaCeph/dotfiles.git

cp dotfiles/.config/* ~/.config

cp dotfiles/Pictures/wallpapers ~/Pictures
nitrogen ~/Pictures/wallpapers/
```
Or do this all at once:
```
git clone https://github.com/TheAlphaCeph/dotfiles.git && cp dotfiles/.config/* ~/.config && cp dotfiles/Pictures/wallpapers ~/Pictures && nitrogen ~/Pictures/wallpapers/
```

### Replicate my zsh theme:
Set `zsh` as the default terminal:
```
chsh -s $(which zsh)
```
Install `oh-my-zsh`:
```
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```
Install `powerlevel10k` theme, and the plugins `zsh-autosuggestions`,`zsh-syntax-highlighting`:
```
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k

git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
```
Use my `zsh` config, and apply it using `source ~/.zshrc` if needed:
```
cp dotfiles/.zshrc dotfiles/p10k.zsh ~/.
```

### Additional software:
This is software I usually download on my fresh systems, but it's not a requirement.
```
sudo pacman -S 
```
```
yay -S
```
- freetube
- spotify
- bitwarden
- discord
- microsoft teams
- signal
- sublime text
