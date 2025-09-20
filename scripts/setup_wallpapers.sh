#!/bin/bash

# ========================================
# 🖼️ WALLPAPER SETUP - n1krov
# ========================================

echo "🎨 Configurando directorio de wallpapers..."

# Crear directorio
mkdir -p ~/.config/hypr/wallpapers

# Permisos
chmod 755 ~/.config/hypr/wallpapers

echo "✅ Directorio creado: ~/.config/hypr/wallpapers"

# Descargar wallpapers de ejemplo (opcional)
read -p "¿Descargar wallpapers de ejemplo? (y/N): " download_examples

if [[ "$download_examples" =~ ^[Yy]$ ]]; then
    echo "📥 Descargando wallpapers de ejemplo..."
    cd ~/.config/hypr/wallpapers
    
    # Wallpapers de alta calidad de Unsplash
    echo "  • Descargando space.jpg..."
    curl -L "https://images.unsplash.com/photo-1506905925346-21bda4d32df4?w=2560&h=1440&fit=crop&q=80" -o space.jpg
    
    echo "  • Descargando mountains.jpg..."
    curl -L "https://images.unsplash.com/photo-1506905925346-21bda4d32df4?w=2560&h=1440&fit=crop&q=80" -o mountains.jpg
    
    echo "  • Descargando ocean.jpg..."
    curl -L "https://images.unsplash.com/photo-1518837695005-2083093ee35b?w=2560&h=1440&fit=crop&q=80" -o ocean.jpg
    
    echo "  • Descargando forest.jpg..."
    curl -L "https://images.unsplash.com/photo-1441974231531-c6227db76b6e?w=2560&h=1440&fit=crop&q=80" -o forest.jpg
    
    echo "  • Descargando abstract.jpg..."
    curl -L "https://images.unsplash.com/photo-1557264305-7e2764da873b?w=2560&h=1440&fit=crop&q=80" -o abstract.jpg
    
    # Crear symlink para lock screen (usar el space como default)
    ln -sf space.jpg lock.jpg
    
    echo "✅ Wallpapers descargados exitosamente"
    echo "🔗 lock.jpg → space.jpg (default lock wallpaper)"
else
    echo "⚠️  Recordá poner tus wallpapers en ~/.config/hypr/wallpapers/"
    echo "    Y crear un symlink o archivo lock.jpg para el lock screen"
fi

echo ""
echo "📂 Estructura creada:"
echo "  ~/.config/hypr/wallpapers/"
echo "  ├── space.jpg (ejemplo)"
echo "  ├── mountains.jpg (ejemplo)"
echo "  ├── ocean.jpg (ejemplo)"
echo "  ├── forest.jpg (ejemplo)"
echo "  ├── abstract.jpg (ejemplo)"
echo "  └── lock.jpg → space.jpg"
echo ""
echo "🎯 Próximos pasos:"
echo "  1. Ejecutar: chmod +x setup_wallpapers.sh && ./setup_wallpapers.sh"
echo "  2. Agregar tus wallpapers favoritos al directorio"
echo "  3. Configurar power menu (próximo paso)"
