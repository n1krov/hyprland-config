# 8. Utilidades Avanzadas

En este paso se listan y configuran utilidades que mejoran la experiencia de uso diario en Wayland/Hyprland, optimizando el flujo de trabajo y agregando funciones imprescindibles.

---

## 8.1. Portapapeles

- **wl-clipboard:**  
  ```sh
  sudo pacman -S wl-clipboard
  ```
- **cliphist** (historial de portapapeles, requiere wl-clipboard):  
  ```sh
  paru -S cliphist
  ```
- **Configuración recomendada:**  
  Añade a tu `~/.config/hypr/hyprland.conf`:
  ```
  exec-once = wl-paste --type text --watch cliphist store
  ```

---

## 8.2. Volumen y Audio

- **pamixer:**  
  ```sh
  sudo pacman -S pamixer
  ```
- **pavucontrol** (control gráfico de audio):  
  ```sh
  sudo pacman -S pavucontrol
  ```
- **wireplumber** (gestor de audio para pipewire):  
  ```sh
  sudo pacman -S wireplumber
  ```

---

## 8.3. Red y Bluetooth

- **network-manager-applet**  
  ```sh
  sudo pacman -S network-manager-applet
  ```
- **blueman** (UI para Bluetooth):  
  ```sh
  sudo pacman -S blueman
  ```

---

## 8.4. Notificaciones

- **mako** (ligero y personalizable, recomendado):  
  ```sh
  sudo pacman -S mako
  ```
  Agrega a tu configuración Hyprland:
  ```
  exec-once = mako
  ```

---

## 8.5. Capturas de pantalla y grabación

- **grim** y **slurp** (captura de pantalla):  
  ```sh
  sudo pacman -S grim slurp
  ```
- **swappy** (editor de capturas):  
  ```sh
  paru -S swappy
  ```
- **wf-recorder** (grabación de pantalla):  
  ```sh
  paru -S wf-recorder
  ```
- **obs-studio** (grabación avanzada y streaming):  
  ```sh
  sudo pacman -S obs-studio
  ```

---

## 8.6. Menú de apagado/reinicio/suspender

- **wlogout** (menú gráfico):  
  ```sh
  paru -S wlogout
  ```
- Puedes vincularlo a un atajo en Hyprland para acceso rápido.

---

## 8.7. Otros utilitarios recomendados

- **btop / htop:** Monitoreo de sistema.
- **neofetch / fastfetch:** Información rápida del sistema.
- **brightnessctl:** Control de brillo desde terminal/barra.
- **trayer / stalonetray:** Bandeja de sistema para apps legacy (si lo necesitas).

---

## 8.8. Ejemplo de sección en hyprland.conf para utilidades

```
exec-once = mako
exec-once = wl-paste --type text --watch cliphist store
exec-once = blueman-applet
exec-once = nm-applet --indicator
exec-once = wlogout
```

---

**Con estas utilidades tu escritorio Wayland será mucho más completo, cómodo y productivo.**
