# My dotfiles

- Terminal: [**Kitty**](https://github.com/TheAlphaCeph/dotfiles/blob/main/.config/kitty/kitty.conf)
- Shell: [**Zsh**](https://github.com/TheAlphaCeph/dotfiles/blob/main/.zshrc)
- Prompt: [**spaceship**](https://github.com/spaceship-prompt/spaceship-prompt)

# ~ i3-gaps
Main theme: [**Catppuccin**](https://github.com/catppuccin/cattpuccin)
- WM: [**i3**](https://github.com/TheAlphaCeph/dotfiles/blob/main/.config/i3/config)
- Bar: [**Polybar**](https://github.com/TheAlphaCeph/dotfiles/tree/main/.config/polybar) (Forked from [polybar-themes's Forest](https://github.com/adi1090x/polybar-themes#forest))
- Launcher: [**Rofi**](https://github.com/TheAlphaCeph/dotfiles/blob/main/.config/rofi/config.rasi)
- Compositor: [**Picom**](https://github.com/TheAlphaCeph/dotfiles/blob/main/.config/picom/picom.conf)
- Notifications: [**Dunst**](https://github.com/TheAlphaCeph/dotfiles/blob/main/.config/dunst/dunstrc)
- GTK Theme: [**Catppuccin**](https://github.com/catppuccin/gtk) (by using `lxappearance`)

<details>
  <summary>Other Catppuccined things</summary>
  
  - [Firefox/Librewolf](https://addons.mozilla.org/en-US/firefox/addon/catppuccin-dark-sky/)
  - [Sublime Text](https://github.com/catppuccin/sublime-text)
  - [Dark Reader](https://github.com/catppuccin/dark-reader)
  - [Spicetify for Spotify](https://github.com/catppuccin/spicetify)
  - [btop](https://github.com/catppuccin/btop)
  - [Mouse cursors](https://github.com/catppuccin/cursors)
</details>

<details>
  <summary>Polybar adjustments (DO NOT SKIP)</summary>
  
  1. Download the dependencies for the `polywins` module and make the script executable:
  ```
  sudo pacman -S --needed wmctrl xprop slop
  chmod +x ~/.config/polybar/scripts/polywins.sh
  ```
  2. Uncomment the right `modules-right` in `polybar/forest/config.ini` depending on if you're using a desktop or a laptop.
  3. Some modules will only work after specifying the right paths or devices, which are different from machine to machine. Make sure every module is working and configure them in `polybar/forest/modules.ini` and in `polybar/forest/user_modules.ini` if not.
</details>

![alt text](https://github.com/TheAlphaCeph/dotfiles/blob/main/screenshots/i3_1.png?raw=true)
![alt text](https://github.com/TheAlphaCeph/dotfiles/blob/main/screenshots/i3_2.png?raw=true)

Custom shortcuts:
| Keybind | Function |
| --- | --- |
| `Super + Return` | Open Kitty terminal |
| `Super + D` | Open Rofi launcher |
| `Super + Shift + Q` | Close window |
| `Super + 1-9` | Switch to workspace (1-9) |
| `Super + Shift + 1-9` | Move window to workspace (1-9) |
| `Super + Tab` | Switch to last active workspace |
| `Super + Shift + R` | Restart i3 |
| `Super + h,j,k,l` | Navigate through windows |
| `Super + Shift + h,j,k,l` | Move window |
| `Super + R` | Resize window using `h,j,k,l` |
| `Super + V` | Open next window vertically |
| `Super + C` | Open next window horizontally |
| `Super + Shift + space` | Toggle floating mode |
| `Super + F` | Toggle fullscreen mode |
| `Alt + Shift` | Switch keyboard layout (Us/It) |

Note: `h,j,k,l` refers to the Vi keybinds where `h = Left`, `j = Down`, `k = Up`, `l = Right`
# ~ Gnome

- Shell Theme: [**Colloid Dark**](https://github.com/vinceliuice/Colloid-gtk-theme)
- GTK Theme: [**Juno Palenight**](https://github.com/EliverLara/Juno)
- Icons: [**Colloid**](https://github.com/vinceliuice/Colloid-icon-theme)
- Bar: [**Dash to Panel**](https://github.com/TheAlphaCeph/dotfiles/blob/main/Gnome/dash-to-panel-config)

<details>
  <summary>Extensions</summary>
  
- [Application Volume Mixer](https://extensions.gnome.org/extension/3499/application-volume-mixer/)
- [Archlinux updates indicator](https://extensions.gnome.org/extension/1010/archlinux-updates-indicator/)
- [Blur my Shell](https://extensions.gnome.org/extension/3193/blur-my-shell/)
- [Compiz window effect](https://extensions.gnome.org/extension/3210/compiz-windows-effect/)
- [Dash to panel](https://extensions.gnome.org/extension/1160/dash-to-panel/)
- [GSConnect](https://extensions.gnome.org/extension/1319/gsconnect/)
- [Gnome 4x UI Improvements](https://extensions.gnome.org/extension/4158/gnome-40-ui-improvements/)
- [Media Control](https://github.com/programmer-pony/media-controls)
- [Workspaces Bar](https://extensions.gnome.org/extension/3851/workspaces-bar/)
- [Tiling assistant](https://extensions.gnome.org/extension/3733/tiling-assistant/)
- [Transparent window moving](https://extensions.gnome.org/extension/1446/transparent-window-moving/)
- [Tray Icons: Reloaded](https://extensions.gnome.org/extension/2890/tray-icons-reloaded/)
- [User Themes](https://extensions.gnome.org/extension/19/user-themes/)
- [Vertical Overview](https://extensions.gnome.org/extension/4144/vertical-overview/)
</details>

![alt text](https://github.com/TheAlphaCeph/dotfiles/blob/main/screenshots/Gnome_1.png?raw=true)

Custom shortcuts:
| Keybind | Function |
| --- | --- |
| `Super + Return` | Open Kitty terminal |
| `Super + D` | Search |
| `Alt + Tab` | Switch windows |
| `Super + 1-4` | Switch to workspace (1-4) |
| `Super + Shift + 1-4` | Move window to workspace (1-4) |
| `Super + Shift + Q` | Close window |
| `Super + X` | Hide all windows |

***
# Packages
### From Arch official repositories:
```
sudo pacman -S adobe-source-han-sans-jp-fonts cmake dbus dunst exa gnome-tweaks gparted kak kitty mpv neofetch nitrogen pfetch playerctl ranger rofi rsync slop vim wmctrl zsh
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
### Other:
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

***
**The FAQ nobody asked for:**

Q: Why the hell would you use both Gnome and i3 on the same computer?

A: ~~Because I can.~~ I use i3 for productivity (for its keyboard-driven workflow) and Gnome for gaming (since [it automatically disables composition](https://linux-gaming.kwindu.eu/index.php?title=Compositor) to boost performance in games).
