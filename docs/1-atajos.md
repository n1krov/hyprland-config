### Paso 6: Configuración de atajos de teclado

Hyprland permite definir atajos de teclado personalizados en el archivo de configuración **`~/.config/hypr/hyprland.conf`**. Vamos a agregar algunos atajos comunes para moverse entre ventanas, cambiar áreas de trabajo, etc.

#### 6.1 Moverse entre ventanas y áreas de trabajo

Para moverte entre las ventanas abiertas y las áreas de trabajo, puedes agregar atajos como estos en el archivo **`hyprland.conf`**:

```ini
# Moverse entre ventanas (foco)
bind=SUPER,K,workspace prev
bind=SUPER,L,workspace next

# Cambiar entre ventanas dentro de la misma área de trabajo
bind=SUPER,H,focuswindow prev
bind=SUPER,J,focuswindow next

# Mover una ventana a un workspace diferente
bind=SUPER+SHIFT,1,movefocusworkspace 1
bind=SUPER+SHIFT,2,movefocusworkspace 2

# Cambiar entre workspaces
bind=SUPER,1,workspace 1
bind=SUPER,2,workspace 2
```

#### 6.2 Abrir aplicaciones

Es muy útil tener atajos de teclado para abrir aplicaciones rápidamente. Para ello, puedes usar **wofi** como lanzador de aplicaciones (similar a **rofi** pero para Wayland):

Instala **wofi**:

```bash
sudo pacman -S wofi
```

Luego, configúralo para abrirse con un atajo de teclado, por ejemplo:

```ini
# Abrir wofi
bind=SUPER,D,exec,wofi --show drun
```

Esto abrirá **wofi** cuando presiones **SUPER+D** (o la tecla Windows).

#### 6.3 Controlar el volumen

Si tienes PipeWire ya funcionando, puedes usar los siguientes atajos para controlar el volumen con **pamixer**:

```bash
# Subir volumen
bind=SUPER+SHIFT,UP,exec,pamixer --increase 5

# Bajar volumen
bind=SUPER+SHIFT,DOWN,exec,pamixer --decrease 5

# Silenciar
bind=SUPER+SHIFT,M,exec,pamixer --toggle-mute
```

#### 6.4 Control de la pantalla y brillo

Para ajustar el brillo de la pantalla, puedes usar la herramienta **brightnessctl**:

Instala **brightnessctl**:

```bash
sudo pacman -S brightnessctl
```

Y luego agrega los atajos para ajustar el brillo de la pantalla:

```bash
# Subir brillo
bind=SUPER+SHIFT,RIGHT,exec,brightnessctl set +10%

# Bajar brillo
bind=SUPER+SHIFT,LEFT,exec,brightnessctl set 10%-
```

