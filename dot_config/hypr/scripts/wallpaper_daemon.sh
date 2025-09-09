#!/bin/bash

# ========================================
# 🤖 WALLPAPER DAEMON - Cambio automático
# ========================================

SCRIPT_DIR="$HOME/.config/hypr/scripts"
WALLPAPER_SCRIPT="$SCRIPT_DIR/wallpaper_swww.sh"

# ⏰ Intervalo en segundos (default: 30 minutos)
INTERVAL="${1:-1800}"

echo "🤖 Wallpaper daemon iniciado (cada ${INTERVAL}s)"
echo "🛑 Para detener: pkill -f wallpaper_daemon"

while true; do
    "$WALLPAPER_SCRIPT" random
    sleep "$INTERVAL"
done
