#!/bin/bash

set -e

red='\033[1;31m'
green='\033[1;32m'
blue='\033[1;34m'
reset='\033[0m'

WAYBAR_DIR="$HOME/.config/waybar"

if [[ "$1" == "1080" ]]; then
    SRC="$WAYBAR_DIR/1080"
elif [[ "$1" == "768" ]]; then
    SRC="$WAYBAR_DIR/768"
else
    echo -e "${red}Uso: $0 [1080|768]${reset}"
    exit 1
fi

if [[ ! -d "$SRC" ]]; then
    echo -e "${red}No existe el directorio ${SRC}${reset}"
    exit 2
fi

echo -e "${blue}Copiando configuración desde ${SRC} a ${WAYBAR_DIR}${reset}"

# Copiar TODO menos el propio directorio 1080/768
rsync -a --delete --exclude '1080' --exclude '768' "${SRC}/" "${WAYBAR_DIR}/"

echo -e "${green}¡Listo! Configuración de Waybar para $1 aplicada.${reset}"

# (Opcional) Reiniciar waybar
if pgrep waybar &>/dev/null; then
    pkill waybar
    # nohup waybar >/dev/null 2>&1 &
    echo -e "${green}Waybar terminada.${reset}"
fi

exit 0
