# Keybindings

#### Lista de Combinaciones de Teclas

| Tecla                          | Acción                                          |
|---------------------------------|-------------------------------------------------|
| `Alt + F`                       | Abrir Firefox                                   |
| `Super + Return`                | Abrir terminal (Kitty)                          |
| `Super + W`                     | Cerrar ventana activa                           |
| `Super + M`                     | Salir de Hyprland                               |
| `Super + E`                     | Abrir el administrador de archivos (Dolphin)    |
| `Super + V`                     | Alternar ventana flotante                       |
| `Super + R`                     | Abrir menú (Wofi)                               |
| `Super + P`                     | Alternar pseudotile (dwindle)                   |
| `Super + J`                     | Alternar split (dwindle)                        |
| `Super + h`                     | Mover el enfoque a la izquierda                 |
| `Super + j`                     | Mover el enfoque abajo                          |
| `Super + k`                     | Mover el enfoque arriba                         |
| `Super + l`                     | Mover el enfoque a la derecha                   |
| `Super + [1-9, 0]`              | Cambiar a escritorio 1-10                       |
| `Super + Shift + [1-9, 0]`      | Mover ventana activa al escritorio 1-10         |
| `Super + S`                     | Alternar espacio de trabajo especial (magic)    |
| `Super + Shift + S`             | Mover ventana al espacio de trabajo especial    |
| `Super + Scroll Down`           | Cambiar al siguiente espacio de trabajo         |
| `Super + Scroll Up`             | Cambiar al espacio de trabajo anterior          |
| `Super + LMB`                   | Mover ventana                                   |
| `Super + RMB`                   | Redimensionar ventana                           |
| `XF86AudioRaiseVolume`          | Aumentar volumen                                |
| `XF86AudioLowerVolume`          | Bajar volumen                                   |
| `XF86AudioMute`                 | Silenciar audio                                 |
| `XF86AudioMicMute`              | Silenciar micrófono                             |
| `XF86MonBrightnessUp`           | Aumentar brillo                                 |
| `XF86MonBrightnessDown`         | Disminuir brillo                                |


# Instalacion basica de Hyprland

> Nota: Veras un script que es `hyprstart.sh`, este script es para iniciar el entorno de Hyprland por si estas en una consola de texto y no tienes un entorno grafico :3.

**Importante**: Debes editar si o si el archivo `hyprpaper.conf` para que puedas tener un fondo de pantalla en tu escritorio.
Simplemente pon las rutas de tus fondos de pantalla en el archivo `hyprpaper.conf` para `preload` y `wallpaper`.

## Requisitos
- yay
- git
- python

## Instalacion

- Con pacman
```bash
sudo pacman -S dolphin git grim slurp swappy
```

- Con yay
```bash
yay -S hyprland wofi hyprpaper kitty waybar
```
> Nota: Yo en lo personal uso kitty como terminal, pero puedes usar tambien alacritty o cualquier otro terminal que desees.


## Configuracion

Despues de instalar los paquetes necesarios, debes de clonar el repositorio de Hyprland en tu carpeta de usuario.

Luego de clonar el repositorio, debes de copiar la carpeta de configuracion de Hyprland a tu carpeta de configuracion de usuario.

Como siempre recomiendo que hagas un enlace simbolico de la carpeta de configuracion de Hyprland a tu carpeta de configuracion de usuario.

- Suponiendo que estas parado en el directorio de esta congifuracion...
```bash
ln -s $(pwd)/.config/hypr ~/.config/
```
- Para la configuracion de Waybar
```bash
ln -s $(pwd)/.config/waybar ~/.config/
```

> Nota: Si ya tienes una carpeta de configuracion de Hyprland y de la Waybar, te recomiendo que hagas un respaldo de tu carpeta de configuracion de Hyprland o borrando la carpeta de configuracion de Hyprland.


