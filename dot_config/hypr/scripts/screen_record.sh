#!/bin/bash

PID_FILE="/tmp/wf-recorder.pid"

if [ -f "$PID_FILE" ]; then
    # Si ya está grabando, parar
    kill $(cat "$PID_FILE")
    rm "$PID_FILE"
    notify-send "Screen Record" "Grabación detenida"
else
    # Empezar grabación
    area=$(slurp)
    if [ -n "$area" ]; then
        wf-recorder -g "$area" -f ~/Videos/$(date +recording_%Y%m%d_%H%M%S).mp4 &
        echo $! > "$PID_FILE"
        notify-send "Screen Record" "Grabación iniciada"
    fi
fi
