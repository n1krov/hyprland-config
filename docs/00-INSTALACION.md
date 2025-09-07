# Ejemplos de instalación masiva de paquetes con `pacman` para Hyprland/Wayland

A continuación se muestra cómo instalar **todos los paquetes esenciales** para un entorno Hyprland/Wayland moderno en Arch Linux, **según tu hardware gráfico**.  
Estos comandos incluyen utilidades esenciales, drivers, dependencias Wayland, herramientas de personalización y programas recomendados.  
**No incluye paquetes de AUR (paru/yay)** ni duplicados, y cada bloque está listo para copiar y pegar.

---

## 💻 Ejemplo para Hardware **Intel**

```sh
sudo pacman -Syu \
networkmanager wget curl git base-devel unzip zip htop neofetch timeshift \
mesa xf86-video-intel vulkan-intel \
wayland wayland-protocols hyprland xdg-desktop-portal-hyprland wl-clipboard wayland-utils wlr-randr swaybg grim slurp mako polkit-gnome qt5-wayland qt6-wayland qt5ct qt6ct gnome-keyring brightnessctl pavucontrol swww chezmoi \
waybar network-manager-applet alsa-utils pipewire pipewire-pulse playerctl bluez bluez-utils blueman upower sysstat jq python ttf-font-awesome ttf-hack-nerd \
wofi kitty foot alacritty thunar thunar-archive-plugin file-roller nemo nautilus pcmanfm \
firefox chromium qutebrowser neovim helix imv loupe mpv vlc thunderbird wf-recorder obs-studio \
lxappearance papirus-icon-theme breeze-icons breeze-cursor-theme xcursor-breeze xcursor-comix xcursor-vanilla-dmz ttf-jetbrains-mono-nerd ttf-firacode-nerd ttf-iosevka-nerd ttf-dejavu ttf-roboto noto-fonts \
pamixer wireplumber btop fastfetch xorg-xwayland
```

---

## 💻 Ejemplo para Hardware **AMD**

```sh
sudo pacman -Syu \
networkmanager wget curl git base-devel unzip zip htop neofetch timeshift \
mesa xf86-video-amdgpu vulkan-radeon \
wayland wayland-protocols hyprland xdg-desktop-portal-hyprland wl-clipboard wayland-utils wlr-randr swaybg grim slurp mako polkit-gnome qt5-wayland qt6-wayland qt5ct qt6ct gnome-keyring brightnessctl pavucontrol swww chezmoi \
waybar network-manager-applet alsa-utils pipewire pipewire-pulse playerctl bluez bluez-utils blueman upower sysstat jq python ttf-font-awesome ttf-hack-nerd \
wofi kitty foot alacritty thunar thunar-archive-plugin file-roller nemo nautilus pcmanfm \
firefox chromium qutebrowser neovim helix imv loupe mpv vlc thunderbird wf-recorder obs-studio \
lxappearance papirus-icon-theme breeze-icons breeze-cursor-theme xcursor-breeze xcursor-comix xcursor-vanilla-dmz ttf-jetbrains-mono-nerd ttf-firacode-nerd ttf-iosevka-nerd ttf-dejavu ttf-roboto noto-fonts \
pamixer wireplumber btop fastfetch xorg-xwayland
```

---

## 💻 Ejemplo para Hardware **NVIDIA**

```sh
sudo pacman -Syu \
networkmanager wget curl git base-devel unzip zip htop neofetch timeshift \
nvidia nvidia-utils \
mesa \
wayland wayland-protocols hyprland xdg-desktop-portal-hyprland wl-clipboard wayland-utils wlr-randr swaybg grim slurp mako polkit-gnome qt5-wayland qt6-wayland qt5ct qt6ct gnome-keyring brightnessctl pavucontrol swww chezmoi \
waybar network-manager-applet alsa-utils pipewire pipewire-pulse playerctl bluez bluez-utils blueman upower sysstat jq python ttf-font-awesome ttf-hack-nerd \
wofi kitty foot alacritty thunar thunar-archive-plugin file-roller nemo nautilus pcmanfm \
firefox chromium qutebrowser neovim helix imv loupe mpv vlc thunderbird wf-recorder obs-studio \
lxappearance papirus-icon-theme breeze-icons breeze-cursor-theme xcursor-breeze xcursor-comix xcursor-vanilla-dmz ttf-jetbrains-mono-nerd ttf-firacode-nerd ttf-iosevka-nerd ttf-dejavu ttf-roboto noto-fonts \
pamixer wireplumber btop fastfetch xorg-xwayland
```

---

## 🔎 Notas

- **Instala solo los drivers gráficos correspondientes a tu hardware (Intel / AMD / NVIDIA).**
- Puedes quitar programas que no uses para mantener tu sistema más liviano.
- Los paquetes de AUR (ej: `catppuccin-gtk-theme`, `bibata-cursor-theme`, `eww`, etc.) se instalan con `paru -S` y no están en estos ejemplos.
- Si necesitas cambiar el tamaño del cursor, usa:
  ```sh
  hyprctl setcursor Qogir-cursors 24
  ```
- Para backup/restauración, revisa los pasos de tu README.

---

**¡Copia el bloque que corresponda a tu hardware y tendrás todo lo esencial para tu setup Hyprland con pacman!**
