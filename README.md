
# Mi configuracion de Hyprland

- Esta configuracion esta diseñada para mi sistema operativo Arch Linux.

## Gestión de Dotfiles con Chezmoi y Git

Esta guía explica cómo gestionar tu configuración personal (dotfiles) usando [chezmoi](https://www.chezmoi.io/) y Git, permitiendo mantener tu entorno sincronizado, versionado y listo para restaurar en segundos.

---

## 1. ¿Qué es chezmoi?

**chezmoi** es una herramienta para gestionar dotfiles. Permite:

- Versionar y sincronizar tu configuración entre equipos.
- Aplicar tu configuración en segundos.
- Usar plantillas para datos sensibles o específicos de cada máquina.

**Importante:** Chezmoi copia archivos de su directorio de trabajo a tu `$HOME`, no usa symlinks por defecto (a diferencia de herramientas como `stow`).

---

## 2. Estructura recomendada de carpetas

Dentro de `~/.local/share/chezmoi`, usa la siguiente estructura:

```
~/.local/share/chezmoi/
├── dot_config/
│   ├── hypr/
│   │   └── hyprland.conf            # => ~/.config/hypr/hyprland.conf
│   ├── waybar/
│   ├── nvim/
│   └── ...                          # Otros programas
├── dot_zshrc                        # => ~/.zshrc
├── dot_gitconfig                    # => ~/.gitconfig
├── scripts/
└── docs/
```

**Nota:**  
- Los archivos y carpetas deben tener el prefijo `dot_` para ubicarse directamente en `$HOME` (ej: `dot_zshrc` → `~/.zshrc`).
- Las configuraciones de programas van en `dot_config/<programa>/` para ubicarse en `~/.config/<programa>/`.

---

## 3. Cómo agregar archivos a chezmoi

Si ya tienes archivos en tu sistema (por ejemplo, en `~/.config/hypr/hyprland.conf`):

```sh
chezmoi add ~/.config/hypr/hyprland.conf
chezmoi add ~/.zshrc
```

Esto los copia a la estructura correcta en `~/.local/share/chezmoi`.

---

## 4. Flujo de trabajo: editar, aplicar y versionar

### a) Cambia a la rama deseada

```sh
cd ~/.local/share/chezmoi
git checkout master          # O la rama que quieras gestionar
```

### b) Edita tus archivos de configuración

Modifica archivos directamente en `~/.local/share/chezmoi`.

### c) Aplica los cambios a tu sistema

```sh
chezmoi apply
```
Esto copiará tus dotfiles desde chezmoi a las rutas correspondientes de tu sistema (`~/.config`, `~/.zshrc`, etc.).

### d) Versiona y sube los cambios a GitHub

```sh
git add .
git commit -m "Actualización de configuración"
git push origin master       # O la rama activa
```

---

## 5. Gestión de ramas

Puedes usar ramas para distintas configuraciones (por ejemplo, diferentes máquinas):

```sh
git branch                   # Ver ramas disponibles
git checkout <rama>          # Cambia de rama
chezmoi apply                # Aplica la configuración de esa rama
```

---

## 6. Sincronizar en otros equipos

En otro equipo, simplemente haz:

```sh
chezmoi init <tu-usuario>/<repo-dotfiles>
chezmoi apply
```
Ejemplo:
```sh
chezmoi init n1krov/hyprland-config
chezmoi apply
```

---

## 7. Buenas prácticas

- Documenta cada cambio importante en tus dotfiles con mensajes de commit claros.
- Usa plantillas y variables de chezmoi para datos sensibles o específicos de máquina.
- Excluye archivos privados con `.gitignore`.
- Mantén esta documentación actualizada para facilitar la migración y restauración.

---

**¡Tu entorno siempre bajo control, sincronizado y listo para restaurar!**
