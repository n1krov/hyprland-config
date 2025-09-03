# 3. Gestión de Configuración

En esta sección se describe cómo organizar, versionar y sincronizar tu configuración personal del escritorio (dotfiles) usando un gestor de dotfiles y buenas prácticas de estructura.

---

## 3.1. ¿Por qué usar un gestor de dotfiles?

- Permite mantener tu configuración sincronizada entre varias computadoras.
- Facilita el backup, restauración y migración de tu entorno.
- Puedes versionar cambios y experimentar sin perder configuraciones anteriores.
- Mantiene tu `$HOME` ordenado y modular.

---

## 3.2. Opciones populares

- **chezmoi**: Muy potente, multiplataforma, fácil de usar.
- **yadm**: Simplicidad git + dotfiles.
- **stow**: Muy simple, enlaces simbólicos.
- **dotter**: Modular, escrito en Rust.

**En este ejemplo se usará `chezmoi`, pero puedes adaptar los pasos a cualquier gestor.**

---

## 3.3. Instalación de chezmoi

```sh
sudo pacman -S chezmoi
```

---

## 3.4. Inicializar tu repositorio de dotfiles

```sh
chezmoi init --prompt
```
O, si ya tienes un repositorio:
```sh
chezmoi init <tu-usuario>/<repo-dotfiles>
chezmoi apply
```

---

## 3.5. Estructura recomendada de carpetas

Organiza tu configuración de programas por carpetas dentro de `~/.config`:

```
~/.config/
├── hypr/        # Hyprland
├── waybar/      # Waybar
├── mako/        # Notificaciones
├── wofi/        # Lanzador de apps
├── kitty/       # Terminal
├── nvim/        # Neovim
├── ...          # Otros programas
```

Con chezmoi, los archivos estarían en `~/.local/share/chezmoi/dot_config/<programa>/`.

---

## 3.6. Versiona tu configuración

- Utiliza git para tener historial de cambios:
  ```sh
  cd ~/.local/share/chezmoi
  git init
  git add .
  git commit -m "Primer commit de dotfiles"
  # Luego conecta tu repo remoto
  git remote add origin git@github.com:TU_USUARIO/dotfiles.git
  git push -u origin main
  ```

---

## 3.7. Tips y buenas prácticas

- Documenta cada cambio importante en tus dotfiles con mensajes de commit claros.
- Usa plantillas o variables de chezmoi para datos sensibles o específicos de máquina.
- Excluye archivos con información privada o claves (usa `.gitignore`).
- Mantén un README en la raíz del repositorio explicando estructura y cómo instalar.

---

**¡Con esto puedes mantener tu configuración siempre bajo control, ordenada y lista para restaurar o migrar en segundos!**
