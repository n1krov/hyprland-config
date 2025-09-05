# 1. Preparación del Sistema – Arch Linux

Esta sección describe cómo dejar tu sistema Arch Linux limpio y listo para montar un escritorio moderno con Hyprland y Wayland.

---

## 1.1. Instalación básica de Arch Linux

- Realiza una instalación limpia de Arch Linux (puedes seguir la [Arch Wiki - Installation Guide](https://wiki.archlinux.org/title/Installation_guide)).
- Evita instalar un entorno de escritorio o window manager durante la instalación.
- Crea tu usuario y otórgale permisos de sudo.

## 1.2. Actualiza el sistema

```sh
sudo pacman -Syu
```

## 1.3. Instala herramientas de red y utilidades esenciales

```sh
sudo pacman -S networkmanager wget curl git base-devel
sudo systemctl enable NetworkManager
sudo systemctl start NetworkManager
```

## 1.4. Instala los drivers gráficos correctos

Elige según tu hardware:

- **Intel:**
  ```sh
  sudo pacman -S mesa xf86-video-intel vulkan-intel
  ```
- **AMD:**
  ```sh
  sudo pacman -S mesa xf86-video-amdgpu vulkan-radeon
  ```
- **NVIDIA:**
  ```sh
  sudo pacman -S nvidia nvidia-utils
  ```
> Si tienes dudas sobre tu hardware, puedes usar:
> ```sh
> lspci | grep -e VGA -e 3D
> ```

## 1.5. Instala soporte base para Wayland

```sh
sudo pacman -S wayland wayland-protocols
```

## 1.6. (Opcional) Otros paquetes útiles

```sh
sudo pacman -S unzip zip htop neofetch
```

## 1.7. Recomendaciones

- Haz snapshot o backup si usas btrfs o timeshift.
- Mantén un README con los pasos ejecutados (como este archivo).
- Versiona tu configuración desde el principio (usa git en tu home o un directorio de dotfiles).

---

**¡Con esto tu Arch Linux estará limpio, actualizado y listo para el próximo paso: instalar Hyprland y dependencias!**
