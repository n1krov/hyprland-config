# 4. Waybar y Complementos

En este paso instalaremos y configuraremos **Waybar**, la barra de estado/panel para Wayland, junto a sus módulos y dependencias más útiles para un escritorio moderno.

---

## 4.1. Instalación de Waybar

```sh
sudo pacman -S waybar
```

> *Opcional*: Si quieres la versión más reciente (a veces más estable con Hyprland), puedes instalar `waybar` desde AUR:
> ```sh
> yay -S waybar
> ```

---

## 4.2. Instalación de módulos y dependencias útiles

**Waybar** soporta módulos nativos y personalizados. Instala los siguientes paquetes para que funcionen todos los módulos esenciales y para tener una barra completa:

```sh
sudo pacman -S \
  network-manager-applet \
  alsa-utils \
  pulseaudio \
  playerctl \
  bluez bluez-utils blueman \
  upower \
  sysstat \
  jq \
  python \
  ttf-font-awesome \
  ttf-hack-nerd
```

**¿Qué aporta cada módulo/paquete?**

- `network-manager-applet`: Estado/control de red.
- `alsa-utils`, `pulseaudio`: Control de volumen/audio.
- `playerctl`: Control multimedia.
- `bluez`, `blueman`: Bluetooth.
- `upower`: Batería y energía.
- `sysstat`: Estadísticas de CPU y memoria.
- `jq`, `python`: Scripts y módulos personalizados.
- `ttf-font-awesome`, `ttf-hack-nerd`: Iconos y fuentes nerd para mejor visualización en la barra.

> **Nota:**  
> Se recomienda `ttf-hack-nerd` para los íconos nerd y una mejor compatibilidad visual, pero puedes usar cualquier otra fuente nerd que prefieras.

---

## 4.3. Estructura de configuración recomendada

Organiza tu configuración en la carpeta `~/.config/waybar/`:

```
~/.config/waybar/
├── config        # Configuración principal (JSON/JSONC)
├── style.css     # Tema y colores
├── scripts/      # Scripts personalizados (opcional)
```

---

## 4.4. Ejemplo de configuración básica (JSONC)

Crea el archivo `~/.config/waybar/config` y adapta según tus preferencias:

```jsonc
{
  "layer": "top",
  "position": "top",
  "modules-left": ["hyprland/workspaces", "hyprland/window"],
  "modules-center": ["clock"],
  "modules-right": ["tray", "pulseaudio", "network", "battery", "cpu", "memory", "backlight", "bluetooth", "custom/updates", "clock#2"],
  "clock": {
    "format": "{:%H:%M  %a %d %b}"
  },
  "battery": {
    "format": "{capacity}% {icon}"
  },
  // Más módulos y configuración aquí
}
```

---

## 4.5. Tematización de Waybar

Crea tu archivo de estilos `~/.config/waybar/style.css` y usa temas como [catppuccin-waybar](https://github.com/catppuccin/waybar), [nord-waybar](https://github.com/archcraft-os/archcraft-themes/tree/[...]
Ejemplo básico:

```css
* {
  font-family: 'Hack Nerd Font', monospace;
  font-size: 13px;
}

window#waybar {
  background: #181825;
  color: #cdd6f4;
  border-bottom: 2px solid #b4befe;
}

/* Módulos individuales */
#clock, #battery, #cpu, #memory {
  padding: 0 10px;
}
```

---

## 4.6. Scripts y módulos personalizados (opcional)

Puedes añadir módulos custom en tu barra usando scripts en `~/.config/waybar/scripts/` (por ejemplo, para actualizaciones, clima, VPN, etc.).

---

## 4.7. Probar y depurar

Ejecuta Hyprland y luego Waybar para probar la barra:

```sh
waybar
```

Si tienes errores, consulta logs en la terminal y ajusta la configuración según mensajes.

---

**¡Waybar ahora está instalado, tematizado y listo para personalizar a fondo!**

¿Quieres ejemplos avanzados de configuración, recomendaciones de temas o ayuda con scripts custom?

