# 10. Solución de Problemas y Tips

Al trabajar con Hyprland y Wayland pueden surgir problemas comunes. Aquí tienes soluciones y consejos útiles.

---

## 10.1. Problemas comunes

### Aplicaciones que no arrancan (especialmente X11)

- Prueba instalar `xwayland` para compatibilidad:
  ```sh
  sudo pacman -S xorg-xwayland
  ```
- Si sigue sin funcionar, ejecuta la aplicación desde terminal y revisa el error.

### Glitches gráficos o rendimiento bajo

- Verifica que tienes los drivers correctos instalados.
- Reinstala `mesa`, `vulkan-*`, y asegúrate de no tener conflictos de paquetes.
- Asegúrate de usar la sesión de Hyprland/Wayland, no X11.

### Problemas con el portapapeles

- Asegúrate de tener `wl-clipboard` y `cliphist` corriendo en segundo plano como se indicó en pasos anteriores.

### Problemas con input (teclado, touchpad)

- Verifica tu archivo `hyprland.conf`, puedes añadir reglas extra para input.
- Consulta [Hyprland Input Docs](https://wiki.hyprland.org/Configuring/Variables/#input) para opciones avanzadas.

---

## 10.2. Debug y logs

- Lanza Hyprland desde una TTY con:
  ```sh
  Hyprland > ~/hyprland.log 2>&1
  ```
  Luego revisa el log con:
  ```sh
  less ~/hyprland.log
  ```
- Usa `journalctl --user -b -xe` para ver logs de servicios de usuario.

---

## 10.3. Recursos y soporte

- [Arch Wiki: Hyprland](https://wiki.archlinux.org/title/Hyprland)
- [Hyprland Wiki Oficial](https://wiki.hyprland.org/)
- [Hyprland Discord](https://discord.gg/hyprland)
- [Reddit: r/Hyprland](https://www.reddit.com/r/hyprland/)

---

## 10.4. Consejos útiles

- Usa `paru` o `yay` para instalar rápidamente paquetes de AUR.
- Mantén tu sistema actualizado (`sudo pacman -Syu`) frecuentemente.
- Versiona tus dotfiles y haz backup regular.
- Documenta siempre tus atajos y personalizaciones.

---
