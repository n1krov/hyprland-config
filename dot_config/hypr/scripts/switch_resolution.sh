#!/bin/bash
HYPR="$HOME/.config/hypr"
SCRIPTS="$HYPR/scripts"
DETECT="$SCRIPTS/detect_resolution.sh"

file_1080="$HYPR/monitor1080.conf"
file_768="$HYPR/monitor768.conf"
target="$HYPR/monitor.conf"

[ -x "$DETECT" ] || { echo "❌ No encuentro $DETECT"; exit 1; }

class="$("$DETECT")"      # devuelve 1080p | 768p
src="$file_768"
[ "$class" = "1080p" ] && src="$file_1080"

[ -f "$src" ] || { echo "❌ Falta perfil: $src"; exit 1; }

cp -f "$src" "$target"
echo "📄 copiado: $(basename "$src") → monitor.conf"

# recarga Hyprland si está corriendo
hyprctl reload >/dev/null 2>&1 && echo "🔄 hyprctl reload"

