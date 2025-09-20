#!/bin/bash
# Devuelve "1080p" si el ancho >=1920, sino "768p"
width="$(hyprctl monitors -j 2>/dev/null \
  | jq -r 'map(.width) | max // empty' 2>/dev/null)"
[ -z "$width" ] && width=1366
[ "$width" -ge 1920 ] && echo 1080p || echo 768p


