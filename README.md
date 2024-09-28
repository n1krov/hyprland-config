# Mi config de Hyprland para Arch Linux

#### Clonar el Repositorio

- Con **SSH**:

```bash
git clone git@github.com:Z0SO/hyprland-config.git ~/.config/hypr
```

- con **HTTPS** lo mismo, solo copia la URL de HTTPS en lugar de la de SSH.

---

### Paso 1: Dependencias Base

Instalamos las dependencias base para poder instalar Hyprland
```bash
sudo pacman -S --needed \
    base-devel \
    wlroots \
    xorg-xwayland \
    pipewire pipewire-pulse pipewire-alsa pipewire-jack \
    swaybg \
    mako \
    wofi \
    grim slurp
```

Estas dependencias incluyen wlroots (necesario para Hyprland), PipeWire para la gestión de audio, swaybg para el fondo de pantalla, mako para notificaciones y wofi como lanzador de aplicaciones.


---

### Paso 2: Instalación de Hyprland

#### 2.1 Instalar Hyprland

Como mencionamos antes, Hyprland se encuentra en AUR, así que usaremos **`yay`** para instalarlo.

Ejecuta el siguiente comando:

```bash
yay -S hyprland
```

Esto descargará e instalará Hyprland junto con las dependencias necesarias para que funcione correctamente en **Wayland**.

#### 2.2 Instalar un compositor (opcional)

Hyprland viene con su propio compositor integrado basado en **wlroots**, por lo que no es necesario instalar otro compositor como en el caso de **Sway** o **Wayfire**. Sin embargo, podemos complementar con utilidades como **picom-ibhagwan-git** si prefieres tener más control sobre transparencias y sombras:

```bash
yay -S picom-ibhagwan-git
```

Este `picom` es una versión modificada que funciona mejor con **Wayland** en algunos entornos híbridos (aunque no es esencial para Hyprland).

#### 2.3 Configurar archivos básicos de Hyprland

Hyprland almacena su configuración en **~/.config/hypr/**. Necesitamos crear esta carpeta y un archivo de configuración básico:

```bash
mkdir -p ~/.config/hypr
cp /usr/share/hyprland/hyprland.conf.example ~/.config/hypr/hyprland.conf
```

Este archivo **`hyprland.conf`** es el archivo de configuración principal. Aquí es donde personalizaremos aspectos como:
- Layout de las ventanas (tiling o stacking).
- Gaps entre ventanas.
- Bordes y esquinas de las ventanas.
- Fondos de pantalla.
- Atajos de teclado.

Puedes abrir este archivo con tu editor favorito para empezar a explorar su configuración:

```bash
nano ~/.config/hypr/hyprland.conf
```

No modificaremos mucho por ahora, ya que avanzaremos paso a paso en la personalización más adelante.

---

### Paso 3: Instalación de un entorno gráfico complementario

#### 3.1 Instalación del servidor de pantalla Wayland

Hyprland utiliza Wayland como servidor gráfico, pero también necesitarás **XWayland** para ejecutar aplicaciones de X11 que aún no son nativas de Wayland. Ya instalamos esto en el **Paso 1**.

#### 3.2 Instalación de un display manager o configuración sin él

##### Opción 1: Usar un **display manager** como **SDDM** o **Ly** para iniciar sesión
Si prefieres un display manager gráfico (pantalla de login), puedes instalar **SDDM** o **Ly**:

- **SDDM**:

```bash
sudo pacman -S sddm
sudo systemctl enable sddm
```

Luego, configura **SDDM** para que ejecute **Hyprland** añadiendo una sesión personalizada en `/usr/share/wayland-sessions/`.

Crea el archivo **`/usr/share/wayland-sessions/hyprland.desktop`** con el siguiente contenido:

```bash
[Desktop Entry]
Name=Hyprland
Comment=A dynamic tiling Wayland compositor
Exec=Hyprland
Type=Application
```

- **Ly** (un DM más ligero):

```bash
yay -S ly
sudo systemctl enable ly.service
```

##### Opción 2: Iniciar sesión sin display manager

Si prefieres no usar un display manager, puedes configurar **Hyprland** para que se inicie automáticamente desde la consola.

1. Abre o crea el archivo **~/.bash_profile** y agrega lo siguiente:

```bash
if [ -z "$DISPLAY" ] && [ "$(tty)" = "/dev/tty1" ]; then
    exec Hyprland
fi
```

Esto iniciará **Hyprland** automáticamente al arrancar el sistema y loguearte en la terminal.

#### 3.3 Instalación de un gestor de sesión (opcional)
Si prefieres algo más sofisticado como un gestor de sesiones, puedes considerar **`xdg-desktop-portal-hyprland`** para integraciones adicionales de Wayland:

```bash
yay -S xdg-desktop-portal-hyprland
```

