#!/bin/bash
HYPR="$HOME/.config/hypr"
SCRIPTS="$HYPR/scripts"
DETECT="$SCRIPTS/detect_resolution.sh"

file_1080="$HYPR/monitor1080.conf"
file_768="$HYPR/monitor768.conf"
target="$HYPR/monitor.conf"

notify() { command -v notify-send >/dev/null 2>&1 && notify-send "Hypr monitor" "$*"; }

[ -x "$DETECT" ] || { msg="❌ No encuentro $DETECT"; echo "$msg"; notify "$msg"; exit 1; }

class="$("$DETECT")"          # 1080p | 768p
src="$file_768"; [ "$class" = "1080p" ] && src="$file_1080"
[ -f "$src" ] || { msg="❌ Falta perfil: $src"; echo "$msg"; notify "$msg"; exit 1; }

cp -f "$src" "$target"
msg="📄 Aplicado $class → $(basename "$target")"; echo "$msg"; notify "$msg"

# recarga Hyprland (silencioso si no corre)
if hyprctl reload >/dev/null 2>&1; then
  notify "🔄 Hyprland recargado"
fi

