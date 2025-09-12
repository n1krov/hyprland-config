#!/bin/bash

# ========================================
# ⚡ POWER MENU ROFI - n1krov
# ========================================

# Script para un menú de energía usando rofi.


# 🎨 Opciones del menú (sin iconos en el texto, rofi los manejará)
options="Lock Screen\nSuspend\nReboot\nShutdown\nLogout\nReload Hyprland\nHibernate"

# 🎯 Mostrar menú con rofi
chosen=$(echo -e "$options" | rofi \
    -dmenu \
    -i \
    -p "Power Menu" \
    -theme ~/.config/rofi/power-menu.rasi \
    -lines 7 \
    -width 25 \
    -location 0)

# 🚀 Ejecutar acción seleccionada
case $chosen in
    "Lock Screen")
        hyprlock
        ;;
    "Suspend")
        notify-send "💤 Suspending..." "Sistema suspendiendo en 3 segundos" -t 3000
        sleep 3
        systemctl suspend
        ;;
    "Reboot")
        notify-send "🔄 Rebooting..." "Sistema reiniciando en 5 segundos" -t 5000
        sleep 5
        systemctl reboot
        ;;
    "Shutdown")
        notify-send "⚡ Shutting down..." "Sistema apagando en 5 segundos" -t 5000
        sleep 5
        systemctl poweroff
        ;;
    "Logout")
        hyprctl dispatch exit
        ;;
    "Reload Hyprland")
        notify-send "🔄 Reloading..." "Recargando configuración de Hyprland" -t 2000
        hyprctl reload
        ;;
    "Hibernate")
        notify-send "🧊 Hibernating..." "Sistema hibernando en 3 segundos" -t 3000
        sleep 3
        systemctl hibernate
        ;;
esac
