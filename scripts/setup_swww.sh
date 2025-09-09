#!/bin/bash

echo "🌊 Configurando SWWW..."

# Crear directorios
mkdir -p ~/.config/hypr/wallpapers
mkdir -p ~/.config/hypr/scripts

# Permisos
chmod +x ~/.config/hypr/scripts/wallpaper_swww.sh
chmod +x ~/.config/hypr/scripts/wallpaper_daemon.sh


echo "✅ SWWW configurado!"
echo ""
echo "📂 Pon tus wallpapers en: ~/.config/hypr/wallpapers/"
echo "🚀 Comandos disponibles: ~/.config/hypr/scripts/wallpaper_swww.sh"
