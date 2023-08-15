![alt text](https://github.com/Zerodya/dotfiles/raw/main/Carbonfox%20Hyprland/screenshots/clean.png)
<sup>[reddit post](https://www.reddit.com/r/unixporn/comments/116dr1x/hyprland_carbonfox_needs_more_love/)</sup>

**(No longer maintained)**
# 🌃 Carbonfox Hyprland

**Color scheme:** [Carbonfox](https://github.com/EdenEast/nightfox.nvim#carbonfox)
- WM: [**Hyprland**](https://github.com/Zerodya/dotfiles/tree/main/Carbonfox%20Hyprland/.config/hypr)
- Bar: [**Waybar**](https://github.com/Zerodya/dotfiles/tree/main/Carbonfox%20Hyprland/.config/waybar)
- Wallpaper manager: [swww](https://github.com/Horus645/swww)
- Launcher: [**Bemenu**](https://github.com/Zerodya/dotfiles/tree/main/Carbonfox%20Hyprland/.config/bemenu) + [j4-dmenu-desktop](https://github.com/enkore/j4-dmenu-desktop)
- Network Manager: [**networkmanager-dmenu**](https://github.com/Zerodya/dotfiles/tree/main/Carbonfox%20Hyprland/.config/networkmanager-dmenu) + Bemenu backend
- Powermenu: [**Wofi**](https://github.com/Zerodya/dotfiles/tree/main/Carbonfox%20Hyprland/.config/wofi) + [**custom script**](https://github.com/Zerodya/dotfiles/blob/main/Carbonfox%20Hyprland/scripts/wofi-power-menu)
- Notifications: [**Mako**](https://github.com/Zerodya/dotfiles/tree/main/Carbonfox%20Hyprland/.config/mako/carbonfox)
- Lock Screen: [**Swaylock-effects**](https://github.com/Zerodya/dotfiles/blob/main/Carbonfox%20Hyprland/.config/swaylock/config)

**GTK color scheme:** [**Carbonfox preset**](https://github.com/Zerodya/dotfiles/blob/main/Carbonfox%20Hyprland/.config/presets/user/carbonfox.json) using [Gradience](https://github.com/GradienceTeam/Gradience)
- GTK4 theme: adwaita (Default)
- GTK3 theme: [adw-gtk3](https://github.com/lassekongo83/adw-gtk3)

**Terminal:** [**Kitty**](https://github.com/Zerodya/dotfiles/tree/main/Carbonfox%20Hyprland/.config/kitty/carbonfox)
- Shell: [**Fish**](https://github.com/Zerodya/dotfiles/tree/main/Carbonfox%20Hyprland/.config/fish)
- Prompt: [starship](https://starship.rs/)

**Fonts:**
- Terminal: [FiraCode Nerd Font](https://github.com/ryanoasis/nerd-fonts/tree/master/patched-fonts/FiraCode)
- Waybar: [BitstreamVeraSansMono Nerd Font](https://github.com/ryanoasis/nerd-fonts/tree/master/patched-fonts/BitstreamVeraSansMono)

**Additional software:**
- Editor: [**Neovim**](https://github.com/Zerodya/dotfiles/blob/main/Carbonfox%20Hyprland/.config/nvim/lua/user/init.lua) with [AstroNvim](https://github.com/AstroNvim/AstroNvim)
- Document viewer: [**Zathura**](https://github.com/Zerodya/dotfiles/tree/main/Carbonfox%20Hyprland/.config/zathura)

***
### Packages
```
yay -S --needed waybar-hyprland-git mako wofi bemenu bemenu-wayland j4-dmenu-desktop swayidle swaylock-effects-git swww nerd-fonts-meta ttf-material-design-icons-extended networkmanager-dmenu-git
```
### Optional packages:
`ddcutil` - to change brightness of external HDMI/DP monitors via waybar `custom-brightness` module

***
### Screenshots

**Fetch**

![alt text](https://github.com/Zerodya/dotfiles/raw/main/Carbonfox%20Hyprland/screenshots/fetch.png)


**GTK**

![alt text](https://github.com/Zerodya/dotfiles/raw/main/Carbonfox%20Hyprland/screenshots/gtk.png)


**Nvim**

![alt text](https://github.com/Zerodya/dotfiles/raw/main/Carbonfox%20Hyprland/screenshots/nvim.png)


**Htop**

![alt text](https://github.com/Zerodya/dotfiles/raw/main/Carbonfox%20Hyprland/screenshots/htop.png)


**Zathura**

![alt text](https://github.com/Zerodya/dotfiles/raw/main/Carbonfox%20Hyprland/screenshots/zathura.png)


**Bemenu**

![alt text](https://github.com/Zerodya/dotfiles/raw/main/Carbonfox%20Hyprland/screenshots/bemenu.png)


**Mako**

![alt text](https://github.com/Zerodya/dotfiles/raw/main/Carbonfox%20Hyprland/screenshots/mako.png)


**Powermenu**

![alt text](https://github.com/Zerodya/dotfiles/raw/main/Carbonfox%20Hyprland/screenshots/powermenu.png)


**Waybar laptop variant**

![alt text](https://github.com/Zerodya/dotfiles/raw/main/Carbonfox%20Hyprland/screenshots/waybar_laptop.png)

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
| `Super + P` | Toggle Hyprland pseudo |
| `Super + T` | Toggle Hyprland split |
| `Super + Q` | Toggle window float |
| `Super + F` | Toggle maximize window |
| `Super + Shift + F` | Toggle fullscreen window |
| `Super + Shift + E` | Powermenu |
| `Super + Space` | Switch keyboard layout (Us/It/Colemak-DH) |

***
Inspired by/forked from:
- [lokesh-krishna dotfiles](https://github.com/lokesh-krishna/dotfiles/tree/main/catppuccin)
- [Waybar's mediaplayer.py](https://github.com/Alexays/Waybar/blob/master/resources/custom_modules/mediaplayer.py)
