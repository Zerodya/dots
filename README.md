# My dotfiles

## About:
THIS REPO IS WORK IN PROGRESS
- Terminal: Kitty
- Shell: Zsh
- Zsh Theme: [spaceship](https://github.com/spaceship-prompt/spaceship-prompt)
<details>
  <summary>Theme: catppuccin</summary>
  
  - [Firefox/Librewolf](https://addons.mozilla.org/en-US/firefox/addon/catppuccin-dark-sky/)
  - [Sublime Text](https://github.com/catppuccin/sublime-text)
  - [Kitty](https://github.com/catppuccin/kitty)
  - [Dark Reader](https://github.com/catppuccin/dark-reader)
  - [btop](https://github.com/catppuccin/btop)
  - [rofi](https://github.com/catppuccin/rofi)
</details>
### Gnome specific
- Theme: [Colloid Dark](https://github.com/vinceliuice/Colloid-gtk-theme)
- Icons: [Colloid](https://github.com/vinceliuice/Colloid-icon-theme)
<details>
  <summary>Extensions</summary>
  
- [Application Volume Mixer](https://extensions.gnome.org/extension/3499/application-volume-mixer/)
- [Archlinux updates indicator](https://extensions.gnome.org/extension/1010/archlinux-updates-indicator/)
- [Blur my Shell](https://extensions.gnome.org/extension/3193/blur-my-shell/)
- [Compiz window effect](https://extensions.gnome.org/extension/3210/compiz-windows-effect/)
- [Dash to panel](https://extensions.gnome.org/extension/1160/dash-to-panel/)
- [GSConnect](https://extensions.gnome.org/extension/1319/gsconnect/)
- [Gnome 4x UI Improvements](https://extensions.gnome.org/extension/4158/gnome-40-ui-improvements/)
- [Media Control](https://extensions.gnome.org/extension/4470/media-controls/) (Not yet on Gnome 42. Use [spotify-tray](https://extensions.gnome.org/extension/4472/spotify-tray/) instead)
- [Workspaces Bar](https://extensions.gnome.org/extension/3851/workspaces-bar/)
- [Tiling assistant](https://extensions.gnome.org/extension/3733/tiling-assistant/) (Not yet on Gnome 42)
- [Transparent window moving](https://extensions.gnome.org/extension/1446/transparent-window-moving/)
- [Tray Icons: Reloaded](https://extensions.gnome.org/extension/2890/tray-icons-reloaded/)
- [User Themes](https://extensions.gnome.org/extension/19/user-themes/)
- [Vertical Overview](https://extensions.gnome.org/extension/4144/vertical-overview/) (Not yet on Gnome 42)

Shortcuts: Coming soon.

</details>

### i3-gaps specific
- Bar: Polybar
- Launcher: Rofi
- Compositor: Picom (ibhagwan's fork)

Shortcuts: Coming soon.
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
  
  3 5-8 11 12 26-28 32 36 46 47 50 51 56
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
  <summary>Main packages and dependencies</summary>
  
  ### From Arch official repositories:
  ```
  sudo pacman -S btop cmake dbus dunst gnome-tweaks gparted kitty mpv neofetch nitrogen pfetch playerctl rofi rsync vim zsh
  ```
  
  ### From Arch User Repository (AUR):
  Note: it is recommended to edit `/etc/makepkg.conf` following [this guide](https://gist.github.com/beci/c737c89685a667053fe02f986d59ca44) for faster compiling time, or you can just use my file (I also edited `PKGEXT='.pkg.tar'`):
  ```
  sudo cp ~/dotfiles/etc/makepkg.conf /etc
  ```
  Install `yay`:
  ```
  sudo pacman -S --needed git base-devel && git clone https://aur.archlinux.org/yay.git && cd yay && makepkg -si
  ```
  then run:
  ```
  yay -S chrome-gnome-shell lf nerd-fonts-complete picom-ibhagwan-git polybar 
  ```
</details>

***
### Replicate my configs:
⚠️ **Remember to backup your files first!!**

Use my .config files:
```
cp -r ~/dotfiles/.config/ ~/
```
Set the wallpapaper in i3:
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
Install `spaceship` theme:
```
git clone https://github.com/spaceship-prompt/spaceship-prompt.git "$ZSH_CUSTOM/themes/spaceship-prompt" --depth=1

ln -s "$ZSH_CUSTOM/themes/spaceship-prompt/spaceship.zsh-theme" "$ZSH_CUSTOM/themes/spaceship.zsh-theme"
```
And the plugins `zsh-autosuggestions`,`zsh-syntax-highlighting`:
```
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
  <summary>More software I usually download</summary>
  
  ```
  sudo pacman -S bitwarden discord flameshot libreoffice-fresh qbittorrent vlc
  ```
  ```
  yay -S freetube-bin librewolf-bin onlyoffice-bin signal-desktop-beta-bin spotify sublime-text-4 teams timeshift
  ```
</details>

<details>
  <summary>Gaming additional software</summary>
  
  ```
  sudo pacman -S gamemode lutris steam
  ```
  ```
  yay -S corectrl goverlay-bin lib32-mangohud mangohud rpcs3-git yuzu-early-access
  ```
</details>

<details>
  <summary>Laptop additional software</summary>
  
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
