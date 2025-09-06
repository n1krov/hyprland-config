# 5. Programas Esenciales para Wayland

En este paso instalaremos los programas y utilidades más importantes para tener un escritorio Wayland completo, funcional y adaptado a tu flujo de trabajo.

---

## 5.1. Lanzador de aplicaciones

Elige uno (o varios) y agrégalos a tu instalación:

- **wofi** (recomendado, rápido y configurable):
  ```sh
  sudo pacman -S wofi
  ```
- **rofi-wayland** (versión para Wayland):
  ```sh
  paru -S rofi-lbonn-wayland
  ```
- **tofi** (minimalista y rápido):
  ```sh
  paru -S tofi
  ```

---

## 5.2. Terminales compatibles con Wayland

Elige tu favorita(s):

- **kitty**:
  ```sh
  sudo pacman -S kitty
  ```
- **foot**:
  ```sh
  sudo pacman -S foot
  ```
- **wezterm**:
  ```sh
  paru -S wezterm
  ```
- **alacritty**:
  ```sh
  sudo pacman -S alacritty
  ```

---

## 5.3. Gestores de archivos

- **thunar** (ligero, estable):
  ```sh
  sudo pacman -S thunar thunar-archive-plugin file-roller
  ```
- **nemo**:
  ```sh
  sudo pacman -S nemo
  ```
- **nautilus**:
  ```sh
  sudo pacman -S nautilus
  ```
- **pcmanfm**:
  ```sh
  sudo pacman -S pcmanfm
  ```

---

## 5.4. Navegadores web

- **Firefox (con soporte Wayland nativo)**:
  ```sh
  sudo pacman -S firefox
  ```
  Añade esto a tu environment para forzar modo Wayland:
  ```sh
  echo 'export MOZ_ENABLE_WAYLAND=1' >> ~/.profile
  ```
- **Chromium**:
  ```sh
  sudo pacman -S chromium
  ```
- **qutebrowser**:
  ```sh
  sudo pacman -S qutebrowser
  ```

---

## 5.5. Editores y herramientas de productividad

- **neovim**:
  ```sh
  sudo pacman -S neovim
  ```
- **helix**:
  ```sh
  sudo pacman -S helix
  ```
- **vscode (con soporte wayland en insiders)**:
  ```sh
  paru -S visual-studio-code-insiders-bin
  ```

---

## 5.6. Visor de imágenes

- **imv**:
  ```sh
  sudo pacman -S imv
  ```
- **loupe** (GTK4, wayland-friendly):
  ```sh
  sudo pacman -S loupe
  ```

---

## 5.7. Reproductores multimedia

- **mpv**:
  ```sh
  sudo pacman -S mpv
  ```
- **vlc**:
  ```sh
  sudo pacman -S vlc
  ```

---

## 5.8. Cliente de correo electrónico

- **thunderbird**:
  ```sh
  sudo pacman -S thunderbird
  ```
- **aerc**:
  ```sh
  paru -S aerc
  ```

---

## 5.9. Apps de notas

- **obsidian**:
  ```sh
  paru -S obsidian
  ```
- **logseq**:
  ```sh
  paru -S logseq-desktop-bin
  ```
- **marktext**:
  ```sh
  paru -S marktext
  ```


---

## 5.10. Otros recomendados

- **Gestión de portapapeles**: wl-clipboard, cliphist.
- **Gestión de energía**: upower, acpi, poweralertd.
- **Utilidades varias**: neofetch, fastfetch, btop, htop.


## 5.11. Herramientas de captura de pantalla (Screenshots)

- **grim** (captura de pantalla para Wayland):
  ```sh
  sudo pacman -S grim
  ```
- **slurp** (selección de área para grim):
  ```sh
  sudo pacman -S slurp
  ```
- **swappy** (anota y edita capturas):
  ```sh
  paru -S swappy
  ```
- **shotman** (alternativa GUI ligera):
  ```sh
  paru -S shotman
  ```
- **wf-recorder** (para grabación de pantalla, también permite capturas):
  ```sh
  sudo pacman -S wf-recorder
  ```
- **obs-studio** (grabación y streaming avanzado):
  ```sh
  sudo pacman -S obs-studio
  ```

---

**Con esto tendrás todos los programas esenciales para un entorno Wayland moderno y funcional. Instala solo los que realmente vayas a usar para mantener tu sistema limpio y rápido.**

