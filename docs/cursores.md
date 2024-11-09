# Estilos de Mis cursores

Para aplicar estilos difernetes a los cursores en arch linux, se puede hacer de la siguiente manera.

## Instalación

Aqui te muestro todos los paquetes que tengo instalado. Puedes hacerlo con yay.

```bash
yay -S bibata-cursor-theme qogir-cursor-theme catppuccin-cursors-git nordzy-cursors oreo-cursors-git
```

Tambien tengo algunos cursores instalados desde pacman.

```bash
sudo pacman -S breeze-icons breeze-cursor-theme xcursor-breeze xcursor-comix xcursor-vanilla-dmz
```

## Configuración

El directorio donde esta almacenado los cursores es `/usr/share/icons/`.
- Ejemplo del directorio de cursores.
```bash
❯ ls
 Adwaita                         Bibata-Original-Ice         Nordzy-cursors                whiteglass
 AdwaitaLegacy                   Bibata-Original-Ice-Right   Nordzy-cursors-white         
 Bibata-Modern-Amber             breeze                      Papirus                      
 Bibata-Modern-Amber-Right       breeze-dark                 Papirus-Dark                 
 Bibata-Modern-Classic           capitaine-cursors           Papirus-Light                
 Bibata-Modern-Classic-Right     capitaine-cursors-light     Qogir-cursors                
 Bibata-Modern-Ice               default                     Qogir-manjaro-cursors        
 Bibata-Modern-Ice-Right         elementary                  Qogir-manjaro-white-cursors  
 Bibata-Original-Amber           handhelds                   Qogir-ubuntu-cursors         
 Bibata-Original-Amber-Right     hicolor                     Qogir-ubuntu-white-cursors   
 Bibata-Original-Classic         HighContrast                Qogir-white-cursors          
 Bibata-Original-Classic-Right   locolor                     redglass
```

Como estamos en hyprland, vamos a cambiar el cursor a `Qogir-cursors`.

```bash
hyprctl setcursor Qogir-cursors 24
```
> Nota: El tamaño del cursor es 24.

Si estas usando mi .zshrc deje una funcion llamada cursors que te va a retornar el `ls -a` de los cursores.

```bash
cursors
```

Por ultimo elige el cursor que mas te guste y cambialo de la siguiente manera.

```bash
hyprctl setcursor <cursor> <size>
```

### Configuración en hyprland.conf

- El archivo de configuración de hyprland es `~/.config/hypr/hyprland.conf`.

Ahi dejo la linea de codigo en donde puedes dejar seteado el cursor que mas te guste.
