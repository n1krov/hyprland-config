# 2. Instalación de Hyprland y dependencias principales

Esta sección cubre cómo instalar Hyprland y los paquetes esenciales para un entorno de trabajo Wayland moderno en Arch Linux.

---

## 2.1. Instalar Hyprland

**Desde los repositorios oficiales (recomendado):**
```sh
sudo pacman -S hyprland
```

---

## 2.2. Instalar dependencias clave para Wayland

```sh
sudo pacman -S \
  xdg-desktop-portal-hyprland \
  wl-clipboard \
  wayland-utils \
  wlr-randr \
  swaybg \
  grim \
  slurp \
  mako \
  polkit-gnome \
  qt5-wayland qt6-wayland \
  qt5ct qt6ct \
  gnome-keyring \
  brightnessctl \
  pavucontrol \
  swww
```

**Descripción rápida de algunos paquetes:**

- `xdg-desktop-portal-hyprland`: Para portales y compatibilidad de aplicaciones.
- `wl-clipboard`: Utilidades de portapapeles en Wayland.
- `wayland-utils`: Herramientas útiles de diagnóstico.
- `wlr-randr`: Configuración de monitores.
- `swaybg`: Fondos de pantalla.
- `grim` + `slurp`: Capturas de pantalla.
- `mako`: Notificaciones.
- `polkit-gnome`: Dialogos de permisos para apps gráficas.
- `qt5/6-wayland`, `qt5ct/qt6ct`: Soporte y configuración de aplicaciones Qt.
- `gnome-keyring`: Gestor de contraseñas para apps.
- `brightnessctl`: Control de brillo.
- `pavucontrol`: Control de volumen y audio.
- `swww`: Fondos de pantalla animados o transiciones.

---

## 2.3. (Opcional) Instalar herramientas de desarrollo y utilidades extra

```sh
sudo pacman -S neovim git unzip zip htop fastfetch
```

---

## 2.4. (Opcional) Instalar AUR Helper

Para instalar cosas como `waybar-git`, `wofi`, etc., más adelante:

```sh
sudo pacman -S --needed base-devel
git clone https://aur.archlinux.org/paru.git
cd paru
makepkg -si
```

---

## 2.5. Notas rápidas

- **No ejecutes Hyprland como root.** Siempre desde tu usuario normal.
- Si tienes problemas de permisos con brillo/sonido, revisa que tu usuario esté en los grupos adecuados (`video`, `audio`, etc).

---

**¡Con esto tu sistema tendrá Hyprland listo para lanzar y todas sus dependencias esenciales Wayland!**

