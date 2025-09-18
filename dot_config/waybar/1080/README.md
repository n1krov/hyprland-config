# Nota importante sobre Waybar

Este repositorio utiliza **Waybar** como barra de estado para el entorno gráfico.  
Actualmente, la última versión (0.14.0) de Waybar presenta problemas de compatibilidad o funcionamiento con esta configuración.  
Por esa razón, es necesario utilizar la versión **0.13.0** de Waybar hasta que se publique una corrección oficial (0.14.1).

## ¿Por qué la versión 0.13.0?

La versión 0.14.0 de Waybar tiene [un problema pendiente de solución](https://github.com/Alexays/Waybar/issues) que afecta a este repositorio.  
Hasta que el autor publique una nueva versión con la corrección, recomendamos instalar la versión 0.13.0.

## Instalación de Waybar 0.13.0

Sigue estos pasos para descargar y compilar Waybar 0.13.0 desde el código fuente:

1. **Desinstala cualquier versión actual de Waybar:**
   ```bash
   sudo rm /usr/local/bin/waybar
   # O el comando correspondiente para tu sistema
   ```

2. **Descarga el código fuente de la versión 0.13.0:**
   ```bash
   git clone https://github.com/Alexays/Waybar.git
   cd Waybar
   git checkout v0.13.0
   ```

> En el repo oficial de waybar antes de el siguiente paso te recomiendo instalar las dependencias que pide segun tu distro.

3. **Compila Waybar:**
   ```bash
   meson build
   ninja -C build
   sudo ninja -C build install
   ```

4. **Verifica la versión instalada:**
   ```bash
   waybar --version
   # Debe mostrar la versión 0.13.0
   ```

## Notas

- Recuerda que esta restricción es temporal, y se actualizará el README cuando la solución esté disponible en una nueva versión.
- Si tienes dudas o problemas con la instalación, revisa la documentación oficial de Waybar o abre una issue en este repositorio.

---
**Importante:**  
No uses Waybar 0.14.0 con este repo por el momento.

