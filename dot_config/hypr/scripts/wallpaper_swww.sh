#!/bin/bash

# Este script tiene como objetivo gestionar wallpapers en Hyprland usando swww

# ========================================
# 🌊 SWWW WALLPAPER MANAGER - n1krov
# ========================================

WALLPAPER_DIR="$HOME/.config/hypr/wallpapers"
CURRENT_FILE="$HOME/.config/hypr/.current_wallpaper"

# 🎨 Efectos de transición disponibles
TRANSITIONS=("fade" "left" "right" "top" "bottom" "wipe" "wave" "grow" "center" "any" "outer")

# Función para cambiar wallpaper con transición
change_wallpaper() {
    local wallpaper="$1"
    local transition="${2:-fade}"
    local duration="${3:-2}"
    
    if [[ -f "$wallpaper" ]]; then
        # 🌊 Cambiar con swww (con transición animada)
        swww img "$wallpaper" \
            --transition-type "$transition" \
            --transition-duration "$duration" \
            --transition-fps 60 \
            --transition-bezier 0.25,0.1,0.25,1.0
        
        # Guardar current
        echo "$wallpaper" > "$CURRENT_FILE"
        
        # 📢 Notificación con preview
        notify-send "🌊 Wallpaper" \
            "$(basename "$wallpaper")\nTransición: $transition" \
            -i "$wallpaper" \
            -t 3000
        
        echo "✅ Wallpaper cambiado: $(basename "$wallpaper") con transición $transition"
    else
        notify-send "❌ Error" "Wallpaper no encontrado en .config/hypr/wallpapers/: $wallpaper"
        echo "❌ Error: Wallpaper no existe"
    fi
}

# Script principal
case "$1" in
    "random")
        wallpaper=$(find "$WALLPAPER_DIR" -type f \( -iname "*.jpg" -o -iname "*.png" -o -iname "*.webp" \) | shuf -n 1)
        transition=${TRANSITIONS[$RANDOM % ${#TRANSITIONS[@]}]}
        change_wallpaper "$wallpaper" "$transition" 2
        ;;
        
    "random-fast")
        wallpaper=$(find "$WALLPAPER_DIR" -type f \( -iname "*.jpg" -o -iname "*.png" -o -iname "*.webp" \) | shuf -n 1)
        transition="fade"
        change_wallpaper "$wallpaper" "$transition" 0.5
        ;;
        
    "next")
        current=$(cat "$CURRENT_FILE" 2>/dev/null)
        wallpapers=($(find "$WALLPAPER_DIR" -type f \( -iname "*.jpg" -o -iname "*.png" -o -iname "*.webp" \) | sort))
        
        for i in "${!wallpapers[@]}"; do
            if [[ "${wallpapers[$i]}" == "$current" ]]; then
                next_index=$(( (i + 1) % ${#wallpapers[@]} ))
                change_wallpaper "${wallpapers[$next_index]}" "right" 1.5
                exit 0
            fi
        done
        change_wallpaper "${wallpapers[0]}" "right" 1.5
        ;;
        
    "prev")
        current=$(cat "$CURRENT_FILE" 2>/dev/null)
        wallpapers=($(find "$WALLPAPER_DIR" -type f \( -iname "*.jpg" -o -iname "*.png" -o -iname "*.webp" \) | sort))
        
        for i in "${!wallpapers[@]}"; do
            if [[ "${wallpapers[$i]}" == "$current" ]]; then
                prev_index=$(( (i - 1 + ${#wallpapers[@]}) % ${#wallpapers[@]} ))
                change_wallpaper "${wallpapers[$prev_index]}" "left" 1.5
                exit 0
            fi
        done
        change_wallpaper "${wallpapers[-1]}" "left" 1.5
        ;;
        
    "select")
        # 🎯 Selector con preview usando wofi
        selected=$(find "$WALLPAPER_DIR" -type f \( -iname "*.jpg" -o -iname "*.png" -o -iname "*.webp" \) | \
                  sed "s|$WALLPAPER_DIR/||" | \
                  wofi --dmenu --prompt "🌊 Seleccionar wallpaper:" --height 400 --width 600)
        
        if [[ -n "$selected" ]]; then
            # Preguntar transición
            transition=$(printf '%s\n' "${TRANSITIONS[@]}" | \
                        wofi --dmenu --prompt "🎨 Transición:" --height 300)
            transition=${transition:-fade}
            change_wallpaper "$WALLPAPER_DIR/$selected" "$transition" 2
        fi
        ;;
        
    "slideshow")
        echo "🎬 Iniciando slideshow..."
        wallpapers=($(find "$WALLPAPER_DIR" -type f \( -iname "*.jpg" -o -iname "*.png" -o -iname "*.webp" \) | sort))
        
        for wallpaper in "${wallpapers[@]}"; do
            transition=${TRANSITIONS[$RANDOM % ${#TRANSITIONS[@]}]}
            change_wallpaper "$wallpaper" "$transition" 3
            sleep 10  # 10 segundos cada wallpaper
        done
        ;;
        
    "kill-slideshow")
        pkill -f "wallpaper_swww.sh slideshow"
        notify-send "🛑 Slideshow" "Slideshow detenido"
        ;;
        
    "current")
        current=$(cat "$CURRENT_FILE" 2>/dev/null)
        if [[ -n "$current" ]]; then
            echo "📄 Wallpaper actual: $(basename "$current")"
            notify-send "📄 Current Wallpaper" "$(basename "$current")" -i "$current"
        else
            echo "❌ No hay wallpaper guardado"
        fi
        ;;
        
    "reload")
        # 🔄 Recargar el wallpaper actual
        current=$(cat "$CURRENT_FILE" 2>/dev/null)
        if [[ -n "$current" && -f "$current" ]]; then
            change_wallpaper "$current" "fade" 1
        else
            echo "❌ No hay wallpaper para recargar"
        fi
        ;;
        
    *)
        echo "🌊 SWWW Wallpaper Manager - n1krov"
        echo ""
        echo "Uso: $0 {comando}"
        echo ""
        echo "📋 Comandos disponibles:"
        echo "  random       - Wallpaper aleatorio con transición random"
        echo "  random-fast  - Wallpaper aleatorio rápido (fade 0.5s)"
        echo "  next         - Siguiente wallpaper (slide right)"
        echo "  prev         - Wallpaper anterior (slide left)"
        echo "  select       - Selector visual con transición"
        echo "  slideshow    - Slideshow automático (10s cada uno)"
        echo "  kill-slideshow - Detener slideshow"
        echo "  current      - Mostrar wallpaper actual"
        echo "  reload       - Recargar wallpaper actual"
        echo ""
        echo "🎨 Transiciones: ${TRANSITIONS[*]}"
        ;;
esac
