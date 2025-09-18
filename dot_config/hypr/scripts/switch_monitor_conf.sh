#!/bin/bash
set -e

red='\033[1;31m'
green='\033[1;32m'
blue='\033[1;34m'
reset='\033[0m'

HYPR_DIR="$HOME/.config/hypr"
MONITOR_FILE="monitor.conf"

case "$1" in
  1080)
    SRC="$HYPR_DIR/monitor1080.conf"
    ;;
  768)
    SRC="$HYPR_DIR/monitor768.conf"
    ;;
  *)
    echo -e "${red}Uso: $0 [1080|768]${reset}"
    exit 1
    ;;
esac

if [[ ! -f "$SRC" ]]; then
    echo -e "${red}No se encontró $SRC${reset}"
    exit 2
fi

cp "$SRC" "$HYPR_DIR/$MONITOR_FILE"
echo -e "${green}monitor.conf actualizado con la configuración de $1${reset}"

# (Opcional) Recargar Hyprland si está corriendo
if pgrep Hyprland &>/dev/null; then
    hyprctl reload
    echo -e "${blue}Hyprland recargado.${reset}"
fi
