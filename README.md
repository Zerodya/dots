# ✨☄️ My dotfiles ☄️✨

- Terminal: [**Kitty**](https://github.com/TheAlphaCeph/dotfiles/blob/main/.config/kitty/kitty.conf)
- Shell: [**Zsh**](https://github.com/TheAlphaCeph/dotfiles/blob/main/.zshrc)
- Prompt: [**spaceship**](https://github.com/spaceship-prompt/spaceship-prompt)

# 🌘 Comfy i3

<details>
  <summary>Details (Click me)</summary>
  
Color scheme: [**Catppuccin**](https://github.com/catppuccin/cattpuccin)
- WM: [**i3**](https://github.com/TheAlphaCeph/dotfiles/blob/main/.config/i3/config)
- Bar: [**Polybar**](https://github.com/TheAlphaCeph/dotfiles/tree/main/.config/polybar) (Forked from [polybar-themes's Forest](https://github.com/adi1090x/polybar-themes#forest))
- Launcher: [**Rofi**](https://github.com/TheAlphaCeph/dotfiles/blob/main/.config/rofi/config.rasi)
- Compositor: [**Picom**](https://github.com/TheAlphaCeph/dotfiles/blob/main/.config/picom/picom.conf)
- Notifications: [**Dunst**](https://github.com/TheAlphaCeph/dotfiles/blob/main/.config/dunst/dunstrc)

More Catppuccined things:
  - [Firefox/Librewolf](https://addons.mozilla.org/en-US/firefox/addon/catppuccin-dark-sky/)
  - [Sublime Text](https://github.com/catppuccin/sublime-text)
  - [Dark Reader](https://github.com/catppuccin/dark-reader)
  - [Spicetify for Spotify](https://github.com/catppuccin/spicetify)
  - [btop](https://github.com/catppuccin/btop)
  - [Mouse cursors](https://github.com/catppuccin/cursors)
</details>

<details>
  <summary>Polybar warnings</summary>
  
  **1.** If you're using a laptop, make sure to uncomment the second `modules-right` in `config.ini`.
  
  **2.** Download the dependencies for the `polywins` module and make the script executable:
  ```
  sudo pacman -S --needed wmctrl xprop slop
  chmod +x ~/.config/polybar/scripts/polywins.sh
  ```
  **3.** Download the dependencies for the `now-playing` module and make the script executable
  ```
  sudo pacman -S --needed python3 playerctl dbus-python
  chmod +x ~/.config/polybar/scripts/polybar-now-playing
  ```
  **4.** If you want support for japanese fonts (mainly because of japanese songs in `the now-playing` module) you should download this font:
  ```
  sudo pacman -S adobe-source-han-sans-jp-fonts
  ```
  **5.** Some modules will only work after specifying the right paths or devices, which are different from machine to machine. Make sure every module is working and if not, configure them in `modules.ini` and in `user_modules.ini`.
</details>

![alt text](https://github.com/Zerodya/dotfiles/blob/main/screenshots/i3_1.png?raw=true)
![alt text](https://github.com/Zerodya/dotfiles/blob/main/screenshots/i3_2.png?raw=true)



# 🌒 Elegant Gnome

<details>
  <summary>Details (Click me)</summary>
  
- Shell Theme: [**Colloid Dark**](https://github.com/vinceliuice/Colloid-gtk-theme)
- GTK Theme: [**Juno Palenight**](https://github.com/EliverLara/Juno)
- Icons: [**Colloid**](https://github.com/vinceliuice/Colloid-icon-theme)
- Bar: [**Dash to Panel**](https://github.com/TheAlphaCeph/dotfiles/blob/main/Gnome/dash-to-panel-config)
</details>

![alt text](https://github.com/Zerodya/dotfiles/blob/main/screenshots/Gnome_1.png?raw=true)

***
# 📦 Packages
### From Arch official repositories:
```
sudo pacman -S cmake dbus dunst exa gnome-tweaks gparted kak kitty mpv neofetch nitrogen pfetch playerctl ranger rofi rsync slop vim wmctrl zsh
```
  
### From Arch User Repository (AUR):
<details>
  <summary>AUR recommendations</summary>
    
  Edit `/etc/makepkg.conf` following [this guide](https://gist.github.com/beci/c737c89685a667053fe02f986d59ca44) for faster compiling time.
  
  Install an AUR helper such as `yay`:
  ```
  git clone https://aur.archlinux.org/yay.git && cd yay && makepkg -si
  ```
</details>
  
  ```
  yay -S cava chrome-gnome-shell lf nerd-fonts-complete picom pipes.sh polybar 
  ```

***
### 🚀 Useful stuff:
<details>
  <summary>Zsh configuration</summary>
  
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
Get the plugins `zsh-autosuggestions`,`zsh-syntax-highlighting`:
```
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
```
Use my `zsh` config:
```
cp .zshrc ~/
```
</details>

<details>
  <summary>Common programs I usually download</summary>
  
  ```
  sudo pacman -S bitwarden discord flameshot libreoffice-fresh qbittorrent rhythmbox syncthing syncthing-relaysrv vlc
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

***
🧐 **The FAQ nobody asked for:**

Q: Why the hell would you use both Gnome and i3 on the same computer?

A: ~~Because I can.~~ I use i3 for productivity (for its keyboard-driven workflow) and Gnome for gaming (since [it automatically disables composition](https://linux-gaming.kwindu.eu/index.php?title=Compositor) to boost performance in games).
