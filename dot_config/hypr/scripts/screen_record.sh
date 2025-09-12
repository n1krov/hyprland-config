#!/bin/bash

# ============================  
# Script para grabar la pantalla en Wayland usando wf-recorder y slurp
# ===========================

PID_FILE="/tmp/wf-recorder.pid"
OUTPUT_DIR="$HOME/Videos"
TIMESTAMP=$(date +recording_%Y%m%d_%H%M%S)
OUTPUT_FILE="$OUTPUT_DIR/$TIMESTAMP.mp4"

# Verificar dependencias
for cmd in wf-recorder slurp notify-send; do
  command -v $cmd >/dev/null 2>&1 || {
    notify-send "Screen Record" "Falta la dependencia: $cmd"
    exit 1
  }
done

if [ -f "$PID_FILE" ]; then
    PID=$(cat "$PID_FILE")
    if ps -p $PID > /dev/null; then
        # Si está grabando, detener
        kill -INT $PID
        rm -f "$PID_FILE"
        notify-send "Screen Record" "Grabación detenida"
    else
        # Si el proceso no existe, limpiar y advertir
        rm -f "$PID_FILE"
        notify-send "Screen Record" "No había grabación activa"
    fi
else
    # Empezar grabación
    mkdir -p "$OUTPUT_DIR"
    area=$(slurp)
    if [ -n "$area" ]; then
        wf-recorder -g "$area" -f "$OUTPUT_FILE" &
        echo $! > "$PID_FILE"
        notify-send "Screen Record" "Grabando área seleccionada"
    else
        notify-send "Screen Record" "Grabación cancelada"
        exit 1
    fi
fi
