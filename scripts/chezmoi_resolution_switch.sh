#!/bin/bash

# Script para detectar resolución y aplicar configuración con chezmoi
# Modifica los archivos fuente y aplica cambios automáticamente

CHEZMOI_SOURCE_DIR=$(chezmoi source-path)
HYPR_DIR="$CHEZMOI_SOURCE_DIR/dot_config/hypr"

# Detectar resolución actual
RESOLUTION=$(hyprctl monitors -j 2>/dev/null | jq -r '.[0].width' 2>/dev/null || echo "1366")

echo "🔍 Resolución detectada: ${RESOLUTION}px"

if [ "$RESOLUTION" -ge 1920 ]; then
    echo "🖥️  Aplicando configuración 1080p..."
    
    # Modificar monitor.conf (activar 1080p, comentar 768p)
    sed -i '/^monitor=HDMI-A-1,1920x1080/s/^# *//' "$HYPR_DIR/monitor.conf"
    sed -i '/^monitor=eDP-1,1920x1080/s/^# *//' "$HYPR_DIR/monitor.conf" 
    sed -i '/^monitor=eDP-1,1366x768/s/^/# /' "$HYPR_DIR/monitor.conf"
    
    # Modificar env.conf (escalado 1080p)
    sed -i '/^# env = GDK_SCALE=1$/s/^# *//' "$HYPR_DIR/env.conf"
    sed -i '/^# env = QT_SCALE_FACTOR=1$/s/^# *//' "$HYPR_DIR/env.conf"
    sed -i '/^# env = QT_FONT_DPI=96$/s/^# *//' "$HYPR_DIR/env.conf"
    sed -i '/^env = GDK_SCALE=1.25/s/^/# /' "$HYPR_DIR/env.conf"
    sed -i '/^env = QT_SCALE_FACTOR=1.25/s/^/# /' "$HYPR_DIR/env.conf"
    sed -i '/^env = QT_FONT_DPI=110/s/^/# /' "$HYPR_DIR/env.conf"
    
else
    echo "💻 Aplicando configuración 768p..."
    
    # Modificar monitor.conf (activar 768p, comentar 1080p)
    sed -i '/^monitor=eDP-1,1366x768/s/^# *//' "$HYPR_DIR/monitor.conf"
    sed -i '/^monitor=HDMI-A-1,1920x1080/s/^/# /' "$HYPR_DIR/monitor.conf"
    sed -i '/^monitor=eDP-1,1920x1080/s/^/# /' "$HYPR_DIR/monitor.conf"
    
    # Modificar env.conf (escalado 768p)
    sed -i '/^# env = GDK_SCALE=1.25$/s/^# *//' "$HYPR_DIR/env.conf"
    sed -i '/^# env = QT_SCALE_FACTOR=1.25$/s/^# *//' "$HYPR_DIR/env.conf" 
    sed -i '/^# env = QT_FONT_DPI=110$/s/^# *//' "$HYPR_DIR/env.conf"
    sed -i '/^env = GDK_SCALE=1$/s/^/# /' "$HYPR_DIR/env.conf"
    sed -i '/^env = QT_SCALE_FACTOR=1$/s/^/# /' "$HYPR_DIR/env.conf"
    sed -i '/^env = QT_FONT_DPI=96$/s/^/# /' "$HYPR_DIR/env.conf"
fi

# Aplicar cambios con chezmoi
echo "📋 Aplicando cambios con chezmoi..."
chezmoi apply

# Recargar Hyprland si está corriendo
if pgrep -x "Hyprland" > /dev/null; then
    echo "🔄 Recargando Hyprland..."
    hyprctl reload
fi

echo "✅ Configuración aplicada para ${RESOLUTION}px"
