# 6. Herramientas de Personalización

En este paso vamos a instalar y configurar temas, iconos, fuentes y cursores para lograr un escritorio Hyprland atractivo y coherente visualmente.

---

## 6.1. Temas GTK

Instala algunos temas populares para aplicaciones GTK (Thunar, Gedit, etc.):

```sh
sudo pacman -S lxappearance qt5ct qt6ct
```

Temas recomendados y sus paquetes:

- **Catppuccin:**  
  [catppuccin-gtk-theme](https://aur.archlinux.org/packages/catppuccin-gtk-theme) (`paru -S catppuccin-gtk-theme`)
- **Nord:**  
  [nordic-theme](https://aur.archlinux.org/packages/nordic-theme) (`paru -S nordic-theme`)
- **Dracula:**  
  [dracula-gtk-theme](https://aur.archlinux.org/packages/dracula-gtk-theme) (`paru -S dracula-gtk-theme`)
- **Gruvbox:**  
  [gruvbox-material-gtk-theme-git](https://aur.archlinux.org/packages/gruvbox-material-gtk-theme-git) (`paru -S gruvbox-material-gtk-theme-git`)

Para aplicar el tema, usa **lxappearance**.

---

## 6.2. Temas de iconos

- **Papirus:**  
  ```sh
  sudo pacman -S papirus-icon-theme
  ```
- **Catppuccin:**  
  `paru -S catppuccin-icon-theme`

---

## 6.3. Cursores

- **Bibata:**  
  ```sh
  paru -S bibata-cursor-theme
  ```
- **Catppuccin:**  
  `paru -S catppuccin-cursors`

Aplica los cursores desde **lxappearance**.

---

## 6.4. Fuentes recomendadas

- **Nerd Fonts (para waybar, terminal, etc.):**
  ```sh
  sudo pacman -S ttf-jetbrains-mono-nerd ttf-firacode-nerd ttf-iosevka-nerd
  ```
- **Fuentes para interfaz/lectura:**
  ```sh
  sudo pacman -S ttf-dejavu ttf-roboto noto-fonts
  ```

---

## 6.5. Temas para Waybar

- [Catppuccin Waybar](https://github.com/catppuccin/waybar)
- [Nord Waybar](https://github.com/archcraft-os/archcraft-themes/tree/main/waybar)
- [Gruvbox Waybar](https://github.com/crispybaccoon/gruvbox-waybar)

Descarga el CSS y reemplaza tu `~/.config/waybar/style.css`.

---

## 6.6. Aplicar y configurar temas

- Usa **lxappearance** para GTK, iconos y cursores.
- Usa **qt5ct** y **qt6ct** para programas basados en Qt.
- Cambia las fuentes desde las mismas herramientas o editando tus archivos de configuración (`~/.config/waybar/style.css`, `~/.config/kitty/kitty.conf`, etc).

---

## 6.7. Recomendaciones

- Mantén copias de tus configuraciones de temas en tu repositorio de dotfiles.
- Documenta los temas que usas y cómo cambiarlos en tu README.
- Usa fondos de pantalla acordes al esquema de colores elegido.

---

**¡Ahora tu escritorio Hyprland no solo será funcional, sino también atractivo y coherente!**
