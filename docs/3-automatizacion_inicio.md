### Paso 7: Automatización al iniciar Hyprland

Para automatizar la ejecución de **Waybar**, **wofi**, **swaybg** (fondo de pantalla) y otros componentes esenciales al iniciar Hyprland, puedes agregar estos comandos a tu archivo **`~/.config/hypr/hyprland.conf`** en la sección **`exec-once`**.

Por ejemplo:

```ini
# Ejecutar programas al iniciar Hyprland
exec-once = waybar &
exec-once = wofi --show drun &
exec-once = swaybg -i /ruta/a/tu/wallpaper.jpg &
```

Esto asegurará que las utilidades esenciales se inicien automáticamente cada vez que inicies tu sesión de Hyprland.

