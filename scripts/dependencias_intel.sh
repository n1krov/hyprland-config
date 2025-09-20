#!/bin/bash
# Setup Intel + Hyprland/Wayland en Arch Linux (pacman + yay)

set -euo pipefail
IFS=$'\n\t'

need_root() { [[ $EUID -eq 0 ]] && echo "Ejecutalo SIN sudo (te voy a pedir sudo adentro)" && exit 1 || true; }
have() { command -v "$1" >/dev/null 2>&1; }

need_root

echo "==> Actualizando sistema…"
sudo pacman -Syu --noconfirm

echo "==> Habilitando NetworkManager…"
sudo pacman -S --needed --noconfirm networkmanager
sudo systemctl enable --now NetworkManager

echo "==> Instalando paquetes base + Intel + Wayland/Hyprland…"
PACMAN_PKGS=(
  wget curl git base-devel unzip zip htop fastfetch neofetch timeshift
  mesa xf86-video-intel vulkan-intel
  wayland wayland-protocols hyprland xdg-desktop-portal-hyprland wl-clipboard wayland-utils wlr-randr swaybg grim slurp mako polkit-gnome
  qt5-wayland qt6-wayland qt5ct qt6ct gnome-keyring
  brightnessctl pavucontrol swww chezmoi
  waybar network-manager-applet alsa-utils pipewire pipewire-pulse wireplumber playerctl bluez bluez-utils blueman upower sysstat jq python
  wofi kitty foot alacritty thunar thunar-archive-plugin file-roller nemo nautilus pcmanfm
  firefox chromium qutebrowser neovim helix imv loupe mpv vlc thunderbird wf-recorder obs-studio
  lxappearance papirus-icon-theme breeze-icons breeze-cursor-theme xcursor-breeze xcursor-comix xcursor-vanilla-dmz
  ttf-font-awesome ttf-jetbrains-mono-nerd ttf-firacode-nerd ttf-iosevka-nerd ttf-dejavu ttf-roboto noto-fonts
  pamixer btop xorg-xwayland
)
sudo pacman -S --needed --noconfirm "${PACMAN_PKGS[@]}"

echo "==> Instalando yay (si hace falta)…"
if ! have yay; then
  tmpdir="$(mktemp -d)"; trap 'rm -rf "$tmpdir"' EXIT
  sudo pacman -S --needed --noconfirm base-devel git
  git clone https://aur.archlinux.org/yay-bin.git "$tmpdir/yay-bin"
  (cd "$tmpdir/yay-bin" && makepkg -si --noconfirm)
fi

echo "==> Instalando paquetes de AUR con yay…"
AUR_PKGS=(
  rofi-lbonn-wayland   # rofi para Wayland
  swappy               # editor de capturas
  waybar-hyprland-git  # (opcional) waybar con soporte hyprland
  eww                  # (opcional) widgets
  cliphist             # historial clipboard
  hyprpaper            # (opcional) fondos
  wlogout              # (opcional) power menu
)
yay -S --needed --noconfirm "${AUR_PKGS[@]}"

echo "==> Listo. Recomendado:"
echo "   - Iniciar mako:            systemctl --user enable --now mako.service (o exec-once = mako)"
echo "   - Forzar Wayland en Firefox: export MOZ_ENABLE_WAYLAND=1"
echo "   - Setear cursor:           hyprctl setcursor Qogir-cursors 24"

