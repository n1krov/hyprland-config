#!/bin/bash

# Screenshot de la ventana activa
active_window=$(hyprctl activewindow -j | jq -r '"\(.at[0]),\(.at[1]) \(.size[0])x\(.size[1])"')
grim -g "$active_window" - | wl-copy
notify-send "Screenshot" "Ventana activa copiada al portapapeles"
