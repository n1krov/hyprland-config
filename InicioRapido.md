# 🚀 Getting Started - Hyprland Config con Chezmoi

Guía rápida para operar tu configuración de Hyprland con Chezmoi.

---

## 📦 Instalación inicial en un equipo nuevo

### 1. Instalar Chezmoi (si no lo tienes)
```bash
# Arch/Manjaro
sudo pacman -S chezmoi

# Otras distros
sh -c "$(curl -fsLS get.chezmoi.io)"
```

### 2. Clonar y aplicar tu configuración
```bash
# Con HTTPS
chezmoi init --apply https://github.com/n1krov/hyprland-config.git

# Con SSH (recomendado si ya configuraste SSH)
chezmoi init --apply git@github.com:n1krov/hyprland-config.git
```

### 3. Recargar Hyprland
```bash
hyprctl reload
```

---

## 🛠️ Operaciones diarias con Chezmoi

### Comando rápido: `chez`
Tu alias `chez` te lleva directo al directorio de trabajo:
```bash
chez
# Te lleva a: /home/liskov/.local/share/chezmoi
```

### Editar archivos de configuración

#### Opción 1: Editar con Chezmoi (recomendado)
```bash
# Editar un archivo específico
chezmoi edit ~/.config/hypr/hyprland.conf
chezmoi edit ~/.config/hypr/windowrules.conf
chezmoi edit ~/.config/waybar/config

# Chezmoi abre el archivo fuente automáticamente
```

#### Opción 2: Editar directo en el source path
```bash
# Ir al directorio source
chez

# Editar archivos
nvim dot_config/hypr/hyprland.conf
nvim dot_config/hypr/windowrules.conf
```

### Ver cambios antes de aplicar
```bash
# Ver diferencias entre tu source y los archivos aplicados
chezmoi diff

# Ver qué archivos cambiarían
chezmoi status
```

### Aplicar cambios
```bash
# Aplicar todos los cambios
chezmoi apply

# Aplicar con verbose (ver qué está haciendo)
chezmoi apply -v

# Aplicar solo un archivo específico
chezmoi apply ~/.config/hypr/hyprland.conf
```

### Recargar Hyprland después de cambios
```bash
hyprctl reload
```

---

## 🔄 Sincronizar con GitHub

### Subir cambios (push)
```bash
# 1. Ir al directorio source
chez

# 2. Ver cambios
git status

# 3. Agregar cambios
git add .

# 4. Commit
git commit -m "feat: descripción de los cambios"

# 5. Push a GitHub
git push
```

### Bajar cambios (pull)
```bash
# Actualizar desde GitHub y aplicar
chezmoi update

# O manualmente:
chez
git pull
chezmoi apply
```

---

## 🎯 Workflows comunes

### Cambiar algo en Hyprland
```bash
# 1. Editar
chezmoi edit ~/.config/hypr/hyprland.conf

# 2. Ver cambios
chezmoi diff

# 3. Aplicar
chezmoi apply -v

# 4. Recargar Hyprland
hyprctl reload

# 5. Si está bien, commitear
chez
git add .
git commit -m "feat: cambio en hyprland"
git push
```

### Agregar un archivo nuevo
```bash
# 1. Agregar el archivo a chezmoi
chezmoi add ~/.config/nueva-app/config.conf

# 2. El archivo se copia automáticamente a ~/.local/share/chezmoi

# 3. Commitear
chez
git add .
git commit -m "feat: agregar config de nueva-app"
git push
```

### Re-agregar un archivo modificado
```bash
# Si editaste un archivo directamente (sin chezmoi edit)
chezmoi re-add ~/.config/hypr/hyprland.conf

# Luego commitear
chez
git add .
git commit -m "update: hyprland config"
git push
```

---

## 🔍 Comandos útiles de Chezmoi

```bash
# Ver todos los archivos gestionados
chezmoi managed

# Ver el estado de tus dotfiles
chezmoi status

# Ver diferencias
chezmoi diff

# Ver qué archivo source corresponde a un archivo destino
chezmoi source-path ~/.config/hypr/hyprland.conf
# Output: /home/liskov/.local/share/chezmoi/dot_config/hypr/hyprland.conf

# Verificar configuración
chezmoi doctor

# Eliminar un archivo de chezmoi (sin borrarlo del sistema)
chezmoi forget ~/.config/archivo.conf
```

---

## 📂 Estructura de archivos

```
~/.local/share/chezmoi/           # Source directory (usa `chez` para ir aquí)
├── dot_config/
│   ├── hypr/
│   │   ├── hyprland.conf
│   │   ├── windowrules.conf
│   │   ├── keybindindings.conf
│   │   └── scripts/
│   └── waybar/
└── ...

~/.config/                        # Target directory (donde se aplican)
├── hypr/
│   ├── hyprland.conf
│   └── ...
└── waybar/
```

**Importante**: 
- `dot_` en el nombre = `.` en el path final
- Siempre edita en **source** (`~/.local/share/chezmoi/`) y luego aplica
- O usa `chezmoi edit` para hacerlo automático

---

## 🐛 Troubleshooting

### "Config obsoleto" o warnings en Hyprland
```bash
# Ver logs de Hyprland
cat /tmp/hypr/$(ls -t /tmp/hypr/ | head -n 1)/hyprland.log | grep -i "deprecated\|obsolete\|warning"

# Luego edita los archivos con las correcciones
chezmoi edit ~/.config/hypr/windowrules.conf
```

### Conflictos entre source y destino
```bash
# Ver diferencias
chezmoi diff

# Forzar aplicación (cuidado: sobreescribe destino)
chezmoi apply --force

# O actualizar el source con los cambios del destino
chezmoi re-add <archivo>
```

### Ver qué versión de Hyprland tienes
```bash
hyprctl version
```

---

## 🎨 Tips adicionales

1. **Siempre usa `chezmoi edit`** para modificar archivos - es más seguro
2. **Commitea cambios frecuentemente** - es fácil olvidar qué cambiaste
3. **Usa mensajes de commit descriptivos**:
   - `feat:` para nuevas funcionalidades
   - `fix:` para correcciones
   - `update:` para actualizaciones de config
   - `docs:` para documentación
4. **Prueba en una VM** antes de aplicar cambios grandes
5. **Backup antes de `chezmoi update`** si no estás seguro

---

## 📚 Recursos

- [Chezmoi Docs](https://www.chezmoi.io/)
- [Hyprland Wiki](https://wiki.hyprland.org/)
- [Tu repo](https://github.com/n1krov/hyprland-config)

---

**¿Olvidaste algo?** Vuelve a leer esta guía. Tu yo del futuro te lo agradecerá 🚀
