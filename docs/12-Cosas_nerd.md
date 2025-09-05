# 12. Opcional: Cosas Nerd y Eye Candy

Personaliza tu escritorio Wayland con herramientas visuales, widgets, y trucos para hacerlo único, atractivo y más divertido.

---

## 12.1. Eww (widgets flotantes)

**Eww** te permite mostrar widgets personalizados (reloj, clima, estadísticas, etc.) en tu escritorio.

- Instala desde AUR:
  ```sh
  paru -S eww
  ```
- Documentación y ejemplos: [Eww Wiki](https://elkowar.github.io/eww/)
- Configura tus widgets en `~/.config/eww/`, agrégalos a tu autostart en Hyprland:
  ```
  exec-once = eww daemon
  exec = eww open nombre_widget
  ```

---

## 12.2. Info en terminal (fetch)

- **neofetch**:
  ```sh
  sudo pacman -S neofetch
  ```
- **fastfetch**:
  ```sh
  sudo pacman -S fastfetch
  ```
- **pfetch**:
  ```sh
  paru -S pfetch
  ```
Agrega uno de estos comandos a tu `.bashrc` o `.zshrc` para que se muestre al abrir la terminal.

---

## 12.3. Visualizador de audio en terminal

- **cava** (visualización de espectro de audio):
  ```sh
  sudo pacman -S cava
  ```
  Configura `cava` para usar pipewire/pulseaudio en `~/.config/cava/config` y lánzalo en una terminal para tener visualizaciones en tiempo real.

---

## 12.4. Waybar con módulos custom

- Crea scripts en `~/.config/waybar/scripts/` para:
  - Mostrar el clima, precios de criptomonedas, uso de VPN, tareas pendientes, etc.
  - Ejemplo: módulo custom para actualizaciones de Arch:
    ```jsonc
    "custom/updates": {
      "format": " {}",
      "interval": 1800,
      "exec": "~/.config/waybar/scripts/check-updates.sh"
    }
    ```
  - Script `check-updates.sh`:
    ```sh
    #!/bin/sh
    checkupdates | wc -l
    ```
    No olvides darle permiso de ejecución.

---

## 12.5. Animaciones en Hyprland

- Hyprland permite animaciones de ventanas, transiciones y más.
- Ejemplo de configuración en `hyprland.conf`:
  ```ini
  animations {
    enabled = yes
    bezier = myBezier, 0.05, 0.9, 0.1, 1.05
    animation = windows, 1, 3, myBezier, slide
    animation = windowsOut, 1, 3, default, popin 80%
    animation = border, 1, 10, default
    animation = fade, 1, 10, default
    animation = workspaces, 1, 7, default, slidevert
  }
  ```
- Prueba diferentes curvas y velocidades para un efecto visual único.

---

## 12.6. Otras ideas

- Usa fondos de pantalla animados o scripts para cambiar de fondo según la hora.
- Usa Nerd Fonts para iconos en Waybar, terminal y widgets.
- Prueba temas “eye candy” como Catppuccin, Gruvbox, Dracula, Nord y variantes para Waybar, GTK y Eww.

---

**Diviértete nerdizando y personalizando tu entorno al máximo. ¡Hazlo tuyo!**
