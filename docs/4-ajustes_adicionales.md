### Paso 8: Finalizar y ajustar detalles

#### 8.1 Comprobar configuración

Es importante que, después de hacer los cambios en **`hyprland.conf`**, reinicies Hyprland o recargues la configuración para que los cambios surtan efecto. Puedes recargar la configuración con:

```bash
SUPER+SHIFT+R
```

Este atajo es el predeterminado en Hyprland para recargar la configuración sin cerrar tu sesión.

#### 8.2 Ajustes adicionales

Si quieres instalar más utilidades o hacer configuraciones más específicas, aquí hay algunas recomendaciones adicionales:

- **Notificaciones**: Puedes instalar **mako** para recibir notificaciones en Wayland:

  ```bash
  sudo pacman -S mako
  ```

- **Gestión de ventanas flotantes**: Si prefieres que algunas ventanas sean flotantes por defecto, puedes agregar estas líneas en **`hyprland.conf`**:

  ```ini
  windowrulev2 = float,appname
  ```

  Reemplaza **`appname`** con el nombre de la aplicación que quieras que sea flotante (por ejemplo, **`pavucontrol`** o **`mpv`**).

- **Screenshots**: Para capturas de pantalla, puedes usar **grim** y **slurp**:

  ```bash
  sudo pacman -S grim slurp
  ```

  Luego, puedes asignar atajos para capturar la pantalla con:

  ```ini
  bind=SUPER+P,exec,grim -g "$(slurp)" ~/Pictures/screenshot.png
  ```
