# 9. Gestión de Ventanas y Tiling (Hyprland)

En este paso configuraremos el comportamiento de las ventanas, el tiling, y la organización de escritorios virtuales para sacar el máximo provecho del gestor de ventanas dinámico que ofrece Hyprland.

---

## 9.1. Gaps, bordes y comportamiento del tiling

Edita tu archivo `~/.config/hypr/hyprland.conf` para ajustar los siguientes parámetros:

```ini
# Espacio entre ventanas (gaps)
gaps_in = 6
gaps_out = 20
border_size = 3
col.active_border = rgba(89b4faee)
col.inactive_border = rgba(18182588)
```

---

## 9.2. Reglas de ventanas (floating, tiling, etc.)

Puedes definir reglas para que ciertas aplicaciones se abran siempre en modo flotante, en un workspace específico, etc.

```ini
windowrulev2 = float, class:^(pavucontrol|blueman-manager|nm-connection-editor)$
windowrulev2 = workspace 3, class:^(Firefox)$
windowrulev2 = size 800 600, class:^(wlogout)$
windowrulev2 = center, class:^(wlogout)$
```

Consulta la [documentación oficial de Hyprland: windowrules](https://wiki.hyprland.org/Configuring/Window-Rules/) para más ejemplos.

---

## 9.3. Atajos de teclado recomendados

Ejemplo de atajos en `hyprland.conf`:

```ini
# Cambiar de workspace
bind = $mod, 1, workspace, 1
bind = $mod, 2, workspace, 2
# Mover ventana a otro workspace
bind = $mod SHIFT, 1, movetoworkspace, 1
# Cambiar de ventana
bind = $mod, h, movefocus, l
bind = $mod, l, movefocus, r
bind = $mod, j, movefocus, d
bind = $mod, k, movefocus, u
# Flotar una ventana
bind = $mod, f, togglefloating
# Maximizar/Restaurar
bind = $mod, m, fullscreen
```

---

## 9.4. Scripts y automatización

Puedes crear scripts o usar hooks para organizar ventanas automáticamente según tus necesidades.

Ejemplo: Script para lanzar apps en workspaces específicos al iniciar Hyprland.

```ini
exec-once = firefox
exec-once = kitty
exec-once = thunar
```

O usando reglas específicas para cada aplicación.

---

## 9.5. Otras opciones útiles

- **Scratchpads:** Ejecuta terminales flotantes o apps en overlay con atajos.
- **Swallow:** Oculta la terminal al lanzar apps gráficas desde ella.
- **Animations:** Personaliza animaciones de transición en la configuración (`animations { ... }`).

---

## 9.6. Documenta tus atajos y reglas

Mantén un archivo `keybindings.md` en tu repo de dotfiles con todos tus atajos y reglas personalizadas para fácil referencia y actualización.

---

**¡Con esto tendrás control total sobre tu flujo de ventanas, escritorios y navegación, optimizando tu productividad en Hyprland!**
