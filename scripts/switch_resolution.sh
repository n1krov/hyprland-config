#!/bin/bash
# manual_monitor_switch.sh
# Uso:
#   manual_monitor_switch.sh 720
#   manual_monitor_switch.sh 1080

HYPR="$HOME/.config/hypr"

file_1080="$HYPR/monitor1080.conf"
file_720="$HYPR/monitor768.conf"   # tu perfil 1366x768
target="$HYPR/monitor.conf"

notify() { command -v notify-send >/dev/null 2>&1 && notify-send "Hypr monitor (manual)" "$*"; }

# Validar argumento
case "$1" in
  1080) src="$file_1080"; ;;
  720|768) src="$file_720"; ;;
  *)
    echo "Uso: $(basename "$0") {720|1080}"
    notify "❌ Parámetro inválido. Usa 720 o 1080."
    exit 1
    ;;
esac

# Validar archivo fuente
[ -f "$src" ] || { msg="❌ Falta perfil: $src"; echo "$msg"; notify "$msg"; exit 1; }

# Copiar
cp -f "$src" "$target"
msg="📄 Copiado perfil $1p → $(basename "$target")"
echo "$msg"; notify "$msg"

# Recargar Hyprland si corre
if hyprctl reload >/dev/null 2>&1; then
  notify "🔄 Hyprland recargado"
fi

