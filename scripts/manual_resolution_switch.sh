#!/bin/bash

# Script para cambio manual entre resoluciones
CHEZMOI_SOURCE_DIR=$(chezmoi source-path)

case "$1" in
    "1080p")
        export MOCK_RESOLUTION=1920
        bash ~/.config/hypr/scripts/chezmoi_resolution_switch.sh
        ;;
    "768p") 
        export MOCK_RESOLUTION=1366
        bash ~/.config/hypr/scripts/chezmoi_resolution_switch.sh
        ;;
    "auto")
        bash ~/.config/hypr/scripts/chezmoi_resolution_switch.sh
        ;;
    *)
        echo "Uso: $0 [1080p|768p|auto]"
        echo "Auto detecta la resolución actual y aplica configuración"
        ;;
esac
