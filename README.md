# My dotfiles

## About:
THIS REPO IS WORK IN PROGRESS
- Terminal: Kitty
### Gnome specific
- Theme: [Colloid Dark](https://github.com/vinceliuice/Colloid-gtk-theme)
- Icons: [Colloid](https://github.com/vinceliuice/Colloid-icon-theme)
<details>
  <summary>Extensions</summary>
  
  - [Application Volume Mixer](https://extensions.gnome.org/extension/3499/application-volume-mixer/)
  - [Archlinux updates indicator](https://extensions.gnome.org/extension/1010/archlinux-updates-indicator/)
  - [Compiz window effect](https://extensions.gnome.org/extension/3210/compiz-windows-effect/)
  - [Gesture improvements](https://extensions.gnome.org/extension/4245/gesture-improvements/) (laptop only)
  - [Gnome 40 UI Improvements](https://extensions.gnome.org/extension/4158/gnome-40-ui-improvements/)
  - [GSConnect](https://extensions.gnome.org/extension/1319/gsconnect/)
  - [No overview at startup](https://extensions.gnome.org/extension/4099/no-overview/)
  - [Spotify Tray](https://extensions.gnome.org/extension/4472/spotify-tray/)
  - [Transparent top bar adjustable transparency](https://extensions.gnome.org/extension/3960/transparent-top-bar-adjustable-transparency/)
  - [Transparent window moving](https://extensions.gnome.org/extension/1446/transparent-window-moving/)
  - [Tray Icons: Reloaded](https://extensions.gnome.org/extension/2890/tray-icons-reloaded/)
  - [User Themes](https://extensions.gnome.org/extension/19/user-themes/)
  - [Workspaces Bar](https://extensions.gnome.org/extension/3851/workspaces-bar/)
    
  (Not working in Gnome 42 yet)
  - [Dash to Dock](https://extensions.gnome.org/extension/307/dash-to-dock/)
  - [Tiling assistant](https://extensions.gnome.org/extension/3733/tiling-assistant/)
  - [Vertical Overview](https://extensions.gnome.org/extension/4144/vertical-overview/)
</details>

### i3-gaps specific
- Polybar
- Rofi
***
## Screenshots:
Screenshots coming soon.
***
## Workflow:
Videos coming soon.
***
## Replicate my setup on a fresh Arch Linux installation: 
This is mostly just for myself so that I can easily get my system back everytime I break my Arch system (happens a lot).
I will probably make a script to automate the whole process in the future.
### Steps after fresh installation
Install xorg
```
pacman -S xorg
```
Install Gnome and i3
```
pacman -S gnome i3 firefox git
```
<details>
  <summary>Gnome packages I install</summary>
  
  5-8 11 12 26-28 32 36 46 47 50 51 56
</details>

<details>
  <summary>i3 packages I install</summary>
  
  1 3 4 5
</details>

Enable gdm
```
systemctl enable gdm
```

Clone this repo into your home directory:
```
cd ~/ && git clone https://github.com/TheAlphaCeph/dotfiles.git
```

<details>
  <summary>My software</summary>
  
  ### From Arch official repositories:
  ```
  sudo pacman -S btop cmake dunst gnome-tweaks gparted htop kitty mpv neofetch nitrogen picom rofi vim zsh
  ```
  
  ### From Arch User Repository (AUR):
  Note: it is recommended to edit `/etc/makepkg.conf` following [this guide](https://gist.github.com/beci/c737c89685a667053fe02f986d59ca44) for faster compiling time, or you can just use my file (I also edited `PKGEXT='.pkg.tar'`):
  ```
  sudo cp ~/dotfiles//etc/makepkg.conf /etc
  ```
  Install `yay`:
  ```
  sudo pacman -S --needed git base-devel && git clone https://aur.archlinux.org/yay.git && cd yay && makepkg -si
  ```
  then run:
  ```
  yay -S nerd-fonts-complete polybar deadd-notification-center
  ```
</details>

***
### Replicate my configs:
⚠️ **Remember to backup your files first!!**

Use my .config files:
```
cp -r ~/dotfiles/.config/ ~/
```
Set the wallpapaper:
```
cp -r ~/dotfiles/Pictures/wallpapers ~/Pictures
nitrogen ~/Pictures/wallpapers/
```
***
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
cd ~/dotfiles/
cp .zshrc .p10k.zsh ~/
```
***
### Other:
<details>
  <summary>Software I usually download</summary>
  
  ```
  sudo pacman -S bitwarden discord signal-desktop
  ```
  ```
  yay -S freetube-bin teams spotify sublime-text-4 librewolf
  ```
</details>

<details>
  <summary>Gaming desktop additional setup</summary>
  
  ```
  sudo pacman -S steam lutris gamemode corectrl
  ```
</details>

<details>
  <summary>Laptop additional setup</summary>
  
  Battery:
  ```
  sudo pacman -S tlp
  ```
  ```
  systemctl enable tlp.service
  systemctl mask systemd-rfkill.service
  systemctl mask systemd-rfkill.socket
  sudo tlp start
  ```
  Brightess:
  ```
  sudo pacman -S brightnessctl
  ```
</details>
