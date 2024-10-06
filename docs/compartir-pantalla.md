
# Problema al compartir pantalla en Discord

## Solucion

- Para compartir pantalla en Discord en Arch Linux necesitas instalar el paquete `xdg-desktop-portal-wlr` y otras cositas:

```bash
sudo pacman -S xdg-desktop-portal-hyprland nodejs npm pipewire pipewire-pulse
```


- Para verificar que los servicios del portal esten corriendo:

```bash
systemctl --user restart xdg-desktop-portal
```


- Para verificar que los servicios de pipewire esten corriendo reiniciamos:

```bash
systemctl --user restart pipewire wireplumber
```
