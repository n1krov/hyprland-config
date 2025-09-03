## 1. **Preparación del Sistema**

- Usa una distro rolling release (Arch, EndeavourOS, Fedora Kinoite, Void) para mejor soporte de Hyprland.
- Instala solo el entorno base y los drivers gráficos.

## 2. **Instalación de Hyprland y Dependencias**

- Instala Hyprland desde el repositorio oficial o AUR.
- Instala un compositor de notificaciones (ej: mako).
- Instala herramientas básicas: wayland-utils, xdg-desktop-portal, wl-clipboard, swaybg.

## 3. **Gestión de Configuración**

- Usa un gestor de dotfiles (chezmoi, yadm, dotter, stow) para versionar y sincronizar tu configuración.
- Estructura tu repo de dotfiles en carpetas (ej: ~/.config/hypr, ~/.config/waybar, etc.).

## 4. **Waybar y Complementos**

- Instala Waybar.
- Añade módulos útiles: batería, red, volumen, CPU, RAM, notificaciones, temperatura, reloj, bandeja de sistema.
- Personaliza con temas CSS y fuentes nerd.

## 5. **Programas Esenciales para Wayland**

- Lanzador: wofi, rofi-wayland, tofi.
- Terminal: kitty, foot, wezterm, alacritty.
- Gestor de archivos: thunar, nautilus, nemo, pcmanfm.
- Navegador: firefox-wayland, chromium, qutebrowser.
- Editor: neovim, helix, vscode (insiders para soporte nativo wayland).
- Visor de imágenes: imv, loupe, sxiv (compatible con wlroots).
- Reproductor multimedia: mpv, vlc-wayland.
- Cliente de correo: thunderbird, aerc.
- Notas: obsidian, logseq, marktext.

## 6. **Herramientas de Personalización**

- Temas: usa catppuccin, nord, dracula, gruvbox (GTK, cursor, iconos, waybar).
- Fuentes: JetBrains Mono, FiraCode, Iosevka, fuentes nerd.
- Cursor: Bibata, Catppuccin, Nord.

## 7. **Gestión de fondos de pantalla**

- swaybg, swww, hyprpaper para wallpapers.
- Herramienta para cambio automático: pywal, swww-random.

## 8. **Utilidades Avanzadas**

- Portapapeles: cliphist, wl-clipboard.
- Volumen: pamixer, wireplumber, pavucontrol.
- Red: network-manager-applet, nmtui.
- Bluetooth: blueman.
- Notificaciones: mako.
- Capturas: grim, slurp, swappy.
- Screencast: wf-recorder, obs-studio (wayland).
- Menú de apagado: wlogout, tofi-power-menu.

## 9. **Gestión de ventanas y tiling**

- Usa reglas en Hyprland para floats, tiling, gaps, etc.
- Scripts para organizar escritorios automáticamente.

## 10. **Automatización y Scripts**

- Scripts para iniciar aplicaciones al inicio (systemd user, hyprland.conf).
- Hooks personalizados para eventos (ej: cambio de wifi, batería baja).

## 11. **Backups y Sincronización**

- Sincroniza config con git.
- Backup automático (restic, borg, rsync).

## 12. **Documentación**

- README en tu repo de dotfiles.
- Lista de atajos, tips y flujos de trabajo.

## 13. **Opcional: Cosas Nerd y Eye Candy**

- eww (widgets flotantes).
- neofetch, fastfetch, pfetch (info en terminal).
- cava (visualizador de audio en terminal).
- waybar con módulos custom (scripts propios).
- Animaciones Hyprland.

---

### Repositorios recomendados para inspiración:

- [Hyprland wiki](https://wiki.hyprland.org/)
- [dotfiles de dt](https://github.com/dwt1/dotfiles)
- [dotfiles de nullchilly](https://github.com/nullchilly/dotfiles)
- [dotfiles de ChristianChiarulli](https://github.com/ChristianChiarulli/dotfiles)

