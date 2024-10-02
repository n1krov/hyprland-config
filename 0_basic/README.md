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
sudo pacman -S dolphin git
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


