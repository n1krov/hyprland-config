### Instalación de utilidades esenciales

#### Barra de estado: Waybar

**Waybar** es una barra de estado ampliamente utilizada con **Hyprland** y otros compositores de Wayland. Proporciona información como el uso de CPU, batería, red, volumen, etc., y es completamente personalizable.

Instalamos **Waybar**:

```bash
sudo pacman -S waybar
```

Después de instalarla, necesitas configurar **Waybar**. La configuración básica de **Waybar** se almacena en **~/.config/waybar/**.

Crea el directorio y copia la configuración de ejemplo:

```bash
mkdir -p ~/.config/waybar
cp /usr/share/doc/waybar/config ~/.config/waybar/config
cp /usr/share/doc/waybar/style.css ~/.config/waybar/style.css
```

El archivo **config** define los módulos que quieres mostrar en la barra (por ejemplo, la batería, el volumen, etc.), y **style.css** define el estilo visual.

Puedes abrir el archivo de configuración y personalizarlo según tus preferencias.

#### Terminal

Para el terminal, te recomiendo usar **Alacritty** o **Kitty**, que son muy rápidos y se integran bien en Wayland.

- **Alacritty**:

```bash
sudo pacman -S alacritty
```

- **Kitty**:

```bash
sudo pacman -S kitty
```

Ambos terminales son compatibles con Wayland y muy configurables. Por ejemplo, puedes ajustar el tamaño de la fuente, el esquema de colores y los atajos de teclado.

#### File manager gráfico

Un **file manager** gráfico es esencial si quieres gestionar tus archivos de manera visual. **Thunar** es una opción ligera que se integra muy bien con Hyprland:

```bash
sudo pacman -S thunar
```

Thunar es rápido y tiene soporte para plugins que permiten funciones adicionales como montaje de discos.

#### Configuración de PipeWire (audio)

**PipeWire** es la alternativa moderna a PulseAudio y es el sistema recomendado para manejar audio en entornos Wayland. Ya lo hemos instalado en el **Paso 1**. Sin embargo, necesitas asegurarte de que **PipeWire** esté correctamente habilitado.

Habilita **PipeWire** con los siguientes comandos:

```bash
systemctl --user enable pipewire pipewire-pulse
systemctl --user start pipewire pipewire-pulse
```

Esto gestionará el sonido en tu sistema y se integrará con herramientas gráficas como **pavucontrol** para manejar dispositivos de entrada y salida de audio.

Puedes instalar **pavucontrol** para tener una interfaz gráfica de gestión de audio:

```bash
sudo pacman -S pavucontrol
```

---

### Personalización del entorno

Aquí es donde comenzamos a hacer que Hyprland se vea y funcione como tú quieras.

#### Temas e íconos

Para personalizar el aspecto de tu entorno, puedes instalar paquetes de íconos y temas GTK para que las aplicaciones se vean mejor. Algunas opciones populares incluyen:

- **Papirus Icon Theme** (íconos):

```bash
sudo pacman -S papirus-icon-theme
```

- **Materia GTK Theme** (temas GTK):

```bash
sudo pacman -S materia-gtk-theme
```

Una vez instalados, puedes aplicar los temas e íconos con **lxappearance**, una herramienta gráfica para configurar el aspecto de tus aplicaciones:

```bash
sudo pacman -S lxappearance
```

#### Configuración de la barra de estado (Waybar)

Podemos personalizar **Waybar** agregando módulos como el reloj, CPU, red, etc., en **~/.config/waybar/config**. Aquí hay un ejemplo básico de cómo puede verse la configuración:

```json
{
    "layer": "top",
    "modules-left": ["network", "cpu"],
    "modules-center": ["clock"],
    "modules-right": ["battery", "volume"],
    "clock": {
        "format": "{:%Y-%m-%d %H:%M:%S}"
    }
}
```

Después de editar el archivo de configuración, puedes iniciar **Waybar** en segundo plano añadiendo esto a tu configuración de Hyprland:

```bash
waybar &
```

#### Configuración de Hyprland (ventanas, bordes, gaps)

Para personalizar los gaps, bordes y otros aspectos visuales de las ventanas, edita tu archivo de configuración de **Hyprland** en **~/.config/hypr/hyprland.conf**.

Aquí tienes un ejemplo de cómo agregar **gaps** entre las ventanas y ajustar los **bordes**:

```ini
# Tamaño de gaps entre ventanas
general:gaps_in = 5
general:gaps_out = 10

# Color y tamaño de bordes
decoration:border_size = 2
decoration:active_border_color = rgba(255,255,255,0.8)
```

Estos parámetros te permiten ajustar la apariencia general del entorno de escritorio según tus gustos.

#### Wallpapers

Para configurar un fondo de pantalla, puedes usar **swaybg** (que ya hemos instalado). Añade la siguiente línea a tu configuración de Hyprland para configurar el fondo de pantalla:

```bash
swaybg -i /ruta/a/tu/wallpaper.jpg &
```

---
