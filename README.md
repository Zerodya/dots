# My dotfiles
(This repo is work in progress)

## About:


## Screenshots:
Coming soon.

## Workflow:
Coming soon.

## Full installation on a fresh Arch Linux system:
These steps are supposed to be run on a fresh Arch installation to get my current setup. This configuration is not guaranteed to work on your system, remember to make backups!
### Steps after fresh installation
Install xorg
```
pacman -S xorg
```
Install Gnome and i3
```
pacman -S gnome i3
```
- (The Gnome packages I install are: `5 6 7 8 9 11 12 28 29 30 31 34 38 48 49 52 53 58`, the i3 packages are: `1 3 4 5`)

Enable gdm
```
systemctl enable gdm
```

### From Arch official repositories:
```
sudo pacman -S btop cmake dunst firefox git gnome-tweaks gparted htop kitty mpv neofetch nitrogen picom rofi vim zsh
```

### From Arch User Repository (AUR):
Note: it is recommended to edit `/etc/makepkg.conf` following [this guide](https://gist.github.com/beci/c737c89685a667053fe02f986d59ca44) for faster compiling time, or you can just use my file (I also edited `PKGEXT='.pkg.tar'`):
```
git clone https://github.com/TheAlphaCeph/dotfiles.git
sudo cp dotfiles/etc/makepkg.conf /etc
```
Install `yay`:
```
sudo pacman -S --needed git base-devel && git clone https://aur.archlinux.org/yay.git && cd yay && makepkg -si
```
then run:
```
yay -S nerd-fonts-complete polybar 
```

### Replicate my setup:
⚠️ **Remember to backup your files first!!**

Clone this repo if you haven't already:
```
git clone https://github.com/TheAlphaCeph/dotfiles.git
cd dotfiles
```
Use my .config files:
```
cp -r .config/ ~/
```
Set the wallpapaper:
```
cp -r Pictures/wallpapers ~/Pictures
nitrogen ~/Pictures/wallpapers/
```

### Replicate my zsh config:
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
cp .zshrc p10k.zsh ~/
```

### Additional software:
This is software I usually download on my fresh systems. It's not a requirement.
```
sudo pacman -S bitwarden discord signal-desktop
```
```
yay -S freetube-bin corectrl librewolf teams spotify sublime-text-4
```

### Desktop and laptop specific settings
Enable multilib repository, uncomment the `[multilib]` section in `/etc/pacman.conf`

**Desktop with dedicated AMD GPU (Gaming programs)**
```
sudo pacman -S steam lutris gamemode corectrl
```
