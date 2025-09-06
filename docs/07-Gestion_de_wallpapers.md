# 7. Gestión de Fondos de Pantalla

En este paso se detalla cómo configurar y automatizar el cambio de fondos de pantalla en tu escritorio Hyprland bajo Wayland.

---

## 7.1. Herramientas recomendadas

- **swaybg**: Sencillo, rápido, soportado por Hyprland.
  ```sh
  sudo pacman -S swaybg
  ```
- **swww**: Efectos de transición y animaciones al cambiar de fondo.
  ```sh
  paru -S swww
  ```
- **hyprpaper**: Alternativa oficial de Hyprland, muy ligera.
  ```sh
  paru -S hyprpaper
  ```

---

## 7.2. Configuración básica

### Usando swaybg

Agrega a tu `~/.config/hypr/hyprland.conf`:
```
exec-once = swaybg -i ~/Imágenes/wallpapers/mi_fondo.jpg -m fill
```

### Usando swww

1. Inicia el daemon en tu configuración de Hyprland:
   ```
   exec-once = swww-daemon
   exec = swww img ~/Imágenes/wallpapers/mi_fondo.jpg --transition-type any
   ```
2. Cambia el fondo fácilmente:
   ```sh
   swww img ~/Imágenes/wallpapers/otro_fondo.jpg --transition-type any
   ```

### Usando hyprpaper

Agrega a tu `~/.config/hypr/hyprland.conf`:
```
exec-once = hyprpaper
```
Y crea un archivo `~/.config/hypr/hyprpaper.conf`:
```
preload = ~/Imágenes/wallpapers/mi_fondo.jpg
wallpaper = ,~/Imágenes/wallpapers/mi_fondo.jpg
```

---

## 7.3. Cambio automático de fondos

- **swww-random** (AUR) o un script personalizado con `cron`/`systemd` + `swww`.
- **pywal**: Para generar paletas de colores a partir del fondo (útil para temas automáticos).

---

## 7.4. Organización recomendada

- Guarda tus wallpapers en una carpeta dedicada, por ejemplo: `~/Imágenes/wallpapers/`.
- Versiona tu configuración de scripts y herramientas en tu repo de dotfiles si tienes scripts personalizados.

---

## 7.5. Ejemplo de script para cambio automático (con swww y systemd user)

Crea `~/.config/swww/auto-wall.sh`:
```sh
#!/bin/sh
WALLPAPERS=~/Imágenes/wallpapers
swww img "$(find "$WALLPAPERS" -type f | shuf -n1)" --transition-type any
```
Hazlo ejecutable:
```sh
chmod +x ~/.config/swww/auto-wall.sh
```
Agrega un timer de systemd user para ejecutarlo cada cierto tiempo.

---

**¡Con esto tendrás tu escritorio siempre fresco y a tu gusto, con cambios de fondo fluidos y automáticos si lo deseas!**
