![alt text](https://github.com/Zerodya/dotfiles/raw/main/EvoCarbon%20Hyprland/screenshots/clean.png)
# 👽 EvoCarbon Hyprland

**Color scheme:** [Carbonfox](https://github.com/EdenEast/nightfox.nvim#carbonfox) inspired
- WM: [**Hyprland**](https://github.com/Zerodya/dotfiles/tree/main/Carbonfox%20Hyprland/.config/hypr)
- Bar: [**Waybar**](https://github.com/Zerodya/dotfiles/tree/main/Carbonfox%20Hyprland/.config/waybar)
- Wallpaper manager: [swww](https://github.com/Horus645/swww)
- Launcher: [**Bemenu**](https://github.com/Zerodya/dotfiles/tree/main/Carbonfox%20Hyprland/.config/bemenu) + [j4-dmenu-desktop](https://github.com/enkore/j4-dmenu-desktop)
- Network Manager: [**networkmanager-dmenu**](https://github.com/Zerodya/dotfiles/tree/main/Carbonfox%20Hyprland/.config/networkmanager-dmenu) + Bemenu backend
- Powermenu: [**Wofi**](https://github.com/Zerodya/dotfiles/tree/main/Carbonfox%20Hyprland/.config/wofi) + [**custom script**](https://github.com/Zerodya/dotfiles/blob/main/Carbonfox%20Hyprland/scripts/wofi-power-menu)
- Notifications: [**Mako**](https://github.com/Zerodya/dotfiles/tree/main/Carbonfox%20Hyprland/.config/mako/carbonfox)
- Lock Screen: [**Swaylock-effects**](https://github.com/Zerodya/dotfiles/blob/main/Carbonfox%20Hyprland/.config/swaylock/config)

**GTK color scheme:** [**EvoCarbon preset**](https://github.com/Zerodya/dotfiles/blob/main/EvoCarbon%20Hyprland/.config/presets/user/evocarbon.json) using [Gradience](https://github.com/GradienceTeam/Gradience)
- GTK4 theme: adwaita (Default)
- GTK3 theme: [adw-gtk3](https://github.com/lassekongo83/adw-gtk3)

**Terminal:** [**Kitty**](https://github.com/Zerodya/dotfiles/tree/main/Carbonfox%20Hyprland/.config/kitty/carbonfox)
- Shell: [**Fish**](https://github.com/Zerodya/dotfiles/tree/main/Carbonfox%20Hyprland/.config/fish)
- Prompt: [starship](https://starship.rs/)

**Fonts:**
- Terminal: [FiraCode Nerd Font](https://github.com/ryanoasis/nerd-fonts/tree/master/patched-fonts/FiraCode)
- Waybar: [SF Mono](https://developer.apple.com/fonts/)

***
### Packages
```
yay -S --needed waybar-hyprland-git mako wofi bemenu bemenu-wayland adw-gtk3 gradience j4-dmenu-desktop swayidle swaylock-effects-git swww nerd-fonts-meta ttf-material-design-icons-extended networkmanager-dmenu-git
```
### Optional packages
- `wlsunset` - for night light support (click on brightness module to switch it on/off)

### Further steps
**On Desktop**

- Also install `ddcutil` and `i2c-tools` to change brightness of HDMI/DP screen via Waybar `custom-brightness` module:

    `yay -S --needed ddcutil i2c-tools`

- Add your user to the `i2c` group after installing `i2c-tools`:
    
    `sudo usermod -a -G i2c $USER`

- Change `--bus X` with the number of your monitor bus, detected with `ddcutil detect`, both [here](https://github.com/Zerodya/dotfiles/blob/main/EvoCarbon%20Hyprland/.config/waybar/evocarbon/config.jsonc#L119) and [here](https://github.com/Zerodya/dotfiles/blob/main/EvoCarbon%20Hyprland/.config/waybar/scripts/external-brightness.sh#L4)

**On Laptop**
- Uncomment [Laptop Bar](https://github.com/Zerodya/dotfiles/blob/main/EvoCarbon%20Hyprland/.config/waybar/evocarbon/config.jsonc#L11) in Waybar's config (and comment out [Desktop Bar](https://github.com/Zerodya/dotfiles/blob/main/EvoCarbon%20Hyprland/.config/waybar/evocarbon/config.jsonc#L6))
- Use the hyprland config for laptops: 
    
    `mv ~/.config/hypr/hyprland_laptop.conf ~/.config/hypr/hyprland.conf`

**Apply GTK Theme**
- Run `gsettings set org.gnome.desktop.wm.preferences button-layout :` to disable Gnome GTK window close/minimize/maximize buttons.
    - (To get them back run `gsettings reset org.gnome.desktop.wm.preferences button-layout`)
- Set the GTK theme in Gradience: 
  - Open Gradience -> Preset Menu -> Manage Presets -> Import [this](https://github.com/Zerodya/dotfiles/blob/main/EvoCarbon%20Hyprland/.config/presets/user/evocarbon.json) -> Apply 
  - Logout to see changes

***
### Screenshots

**Fetch**

![alt text](https://github.com/Zerodya/dotfiles/raw/main/EvoCarbon%20Hyprland/screenshots/fetch.png)

**Bemenu launcher**

![alt text](https://github.com/Zerodya/dotfiles/raw/main/EvoCarbon%20Hyprland/screenshots/bemenu.png)

**GTK**

![alt text](https://github.com/Zerodya/dotfiles/raw/main/EvoCarbon%20Hyprland/screenshots/gtk.png)

**Spotify** and **Mako notifications**

![alt text](https://github.com/Zerodya/dotfiles/raw/main/EvoCarbon%20Hyprland/screenshots/spotify_mako.png)

**Htop** and **Wofi Powermenu**

![alt text](https://github.com/Zerodya/dotfiles/raw/main/EvoCarbon%20Hyprland/screenshots/htop_powermenu.png)



***
### Custom keybinds

| Keybind | Function |
| --- | --- |
| `Super + Return` | Open Kitty terminal |
| `Super + D` | Open Bemenu launcher |
| `Super + Shift + Q` | Close window |
| `Super + 1-9` | Switch to workspace (1-9) |
| `Super + Shift + 1-9` | Move window to workspace (1-9) |
| `Super + Tab` | Switch to last workspace |
| `Super + h,j,k,l` | Navigate through windows |
| `Super + Shift + h,j,k,l` | Move window |
| `Super + R` | Resize window using `h,j,k,l` |
| `Super + P` | Toggle pseudo mode |
| `Super + Shift + P` | Pin floating window |
| `Super + T` | Toggle split mode |
| `Super + Q` | Toggle window float |
| `Super + F` | Toggle maximize window |
| `Super + Shift + F` | Toggle fullscreen window |
| `Super + Shift + E` | Powermenu |
| `Super + Space` | Switch keyboard layout |

***
Credits:
- [linuxmobile's kaku waybar](https://github.com/linuxmobile/kaku/) (Originally from [ArchCraft](https://github.com/archcraft-os)?)
