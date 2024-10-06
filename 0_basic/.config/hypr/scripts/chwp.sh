
#!/bin/bash
# chwp.sh: Change wallpaper by Z0SO


# echo ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣠⠤⠖⠚⣩⠭⠿⠒⠚⠋⠀⠀⠀⠀⠈⠉⠉⠛⠲⠤⣄⣀⠀⠀⠀⠀⠀⠀⠀⠀⠀
# echo ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⡤⣶⣾⣽⣧⣴⣶⣋⣁⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠙⠲⢤⡀⠀⠀⠀⠀⠀
# echo ⠀⠀⠀⠀⠀⠀⠀⠀⢀⣴⡏⠀⣿⣿⣿⣿⣿⣿⣝⢀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠩⣗⣤⡀⠀⠀
# echo ⠀⠀⠀⠀⠀⠀⢀⠞⣿⣿⣇⣠⣿⣿⣿⣿⣿⣿⣿⣿⣷⣧⣒⢂⠀⠀⠀⠀⠀⠀⠀⠄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⢷⣝⠢⡀
# echo ⠀⠀⠀⠀⠀⢀⣾⡀⠸⣿⣿⡿⠋⢀⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣦⣦⣢⠀⠀⠀⠀⢰⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣾⣿⣗⠙
# echo ⠀⠀⠀⢀⣴⣿⣿⣷⣾⠛⠁⠀⢀⣾⢹⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣷⣶⣦⣤⣔⣿⡄⣀⠂⣀⣀⣀⣤⣴⣾⣿⣿⠆⠀
# echo ⠀⠀⢀⣾⣿⣿⡿⠟⠁⠀⠀⠀⣼⡇⠀⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣽⣿⣿⣿⡿⢿⣡⣴⣷
# echo ⠀⠀⣾⡼⣿⡿⠁⠀⠀⠀⠀⢰⢿⠇⢀⡟⢿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣻⣯⣵⣿⣿⣿⣿⣿
# echo ⠀⣸⣿⡼⡿⠁⠀⠀⠀⠀⠀⡾⣼⢸⣿⡇⠀⣿⣿⣿⡟⢿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿
# echo ⠀⣿⣿⣿⠃⠀⠀⠀⠀⠀⢰⠇⣿⣿⣿⣧⡀⣿⣿⣿⡇⠘⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿
# echo ⠀⣿⣿⡟⠀⠀⠀⠀⠀⠀⣼⢀⣿⡿⣿⣿⣿⡿⢿⣿⣇⠀⠉⢿⣿⣿⣿⣿⣿⢺⣿⣿⠇⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿
# echo ⢠⣿⣿⡇⠀⠀⢀⣀⣤⣠⡏⢸⣿⣷⢙⣟⠋⠹⣿⠘⣿⣿⣷⣎⣿⣿⣿⣿⣿⣄⣿⣿⠀⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿
# echo ⢸⣿⣿⠁⠀⠀⠀⠀⠈⢹⡇⢸⣿⢿⠀⣿⠀⢴⡟⡀⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠀⢸⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿
# echo ⠸⡇⢿⡇⠀⠀⠀⠀⠀⢸⠀⢸⣿⠸⡆⣿⠀⢸⡇⠈⢹⣻⣿⣿⡻⢿⢿⣿⣿⣿⣿⣿⠀⣼⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿
# echo ⠀⢻⡛⣿⠛⢿⣶⣤⣠⢼⡀⠈⣿⠀⢻⣿⠀⣼⠀⠀⠈⣇⢿⡏⢷⡈⢛⣿⢻⣿⣿⣿⣾⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿
# echo ⠀⠀⠉⡟⣇⢰⣍⣻⣿⣷⡗⠄⢻⡀⡄⠹⣧⡏⠀⠀⠀⢹⡈⢿⠈⢳⣆⣿⠸⣿⣿⣷⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿
# echo ⠀⠀⠀⡇⠈⠓⠿⠤⣟⡻⡿⠀⠀⠀⠁⠀⠹⣛⣭⣽⣽⣤⣥⣄⣁⠀⠻⣿⠀⢿⣿⣿⣿⣿⣿⣿⣿⣿⠿⠿⣿⣿⣿⣿⣿⣿
# echo ⠀⠀⢠⡧⠖⣀⡤⠖⠀⠉⠃⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣙⣻⣿⣿⣿⣶⣽⠀⠘⣿⣿⣿⣿⣿⣿⠟⣁⡤⠶⢾⣿⣿⣿⣿⣿
# echo ⠀⠀⠸⣗⡭⠓⠉⣢⠄⢰⠎⠀⠀⠀⠀⠀⠀⠀⠘⠓⠒⠿⢥⣀⣙⠳⢭⣹⣷⣄⣿⣿⣿⣿⣿⣿⣴⣥⣝⠲⠾⣿⣿⣿⣿⣿
# echo ⠀⠀⠀⣧⠀⠉⠉⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣀⣠⠤⠀⠀⣉⠉⠛⠋⠀⠀⣿⣿⣿⣿⣿⣟⡷⠀⠈⢳⠄⣿⣿⣿⣿⣿
# echo ⠀⠀⠀⠸⣆⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠊⠉⠀⠀⠀⠴⠎⠂⠀⠀⠀⠀⢸⣿⣿⣿⣿⣿⣯⠤⠖⠒⠋⣰⣿⣿⣿⣿⣿
# echo ⠀⠀⠀⠀⣿⣆⠀⠀⠀⠐⣶⡦⠤⣄⣀⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣼⣿⣿⣿⣿⣿⠁⠀⠀⣠⣾⣿⣿⣿⣿⣿⣿
# echo ⠀⠀⠀⢰⣿⣿⣷⣄⠀⠀⠘⢷⡄⠀⠈⠉⠓⠲⠤⠤⢤⣴⠞⠁⠀⠀⠀⠀⢀⣿⣿⣿⣿⣿⡿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿
# echo ⠀⠀⠀⢸⣿⣿⣿⢿⣧⡀⠀⠀⠑⠦⣄⣀⣈⣛⣳⡾⠟⠁⠀⠀⠀⠀⠀⢀⣸⣿⣿⣿⣿⣿⡇⢹⣯⣉⣿⣿⣿⣿⣿⣿⣿⣿
# echo ⠀⠀⠀⣼⣿⣿⣿⠘⣿⣿⣆⠀⠀⠀⠀⠈⠉⠉⠀⠀⠀⠀⠀⣀⣠⣴⣾⡿⣿⣿⣿⣿⣿⣿⠁⠀⠙⡿⠉⢿⠛⠛⠛⣿⡙⠍
# echo ⠀⠀⠀⣿⣿⣿⣿⠀⠈⠻⣿⠷⢤⣀⣀⣀⣤⡤⠴⣶⣶⣿⣿⣿⣿⠟⠋⢸⣿⣿⣿⣿⣛⡿⠀⢠⠞⠀⠀⠈⢳⣆⠀⠈⢧⠀
# echo ⠀⠀⢰⣿⣿⣿⡿⠀⠀⡰⠋⠀⠀⠀⢀⡔⠁⢀⠜⢁⠜⢿⠿⠛⠁⠀⠀⣿⣿⠷⢧⣿⣫⣇⡴⠁⠀⠀⠀⠀⢸⢻⡇⠀⠈⢣
# echo ⠀⠀⣼⣾⣿⣿⡇⠀⣰⠁⠀⠀⠀⡠⠋⠀⡰⢃⠔⠁⠀⠈⢧⠀⠀⠀⢸⡟⣿⠀⠸⢻⣽⠋⠀⠀⠀⠀⠀⠀⡿⠀⠃⠀⠀⠀
# echo ⠀⢠⣇⣿⣿⣿⡇⢠⡏⠀⠀⠀⣼⣿⣿⣿⡷⠋⠀⠀⠀⢀⣼⣧⠀⠀⣿⢁⣿⠀⠀⢀⡿⠀⠀⠀⠀⠀⠀⢰⠇⠀⠀⠀⠀⠀
# echo ⠀⣸⢸⣿⡏⣿⡇⢸⡇⠀⠀⣸⣿⣿⣿⠟⠀⠀⠀⠀⢀⣾⠋⠈⠣⣸⠇⢸⡇⠀⠀⢰⡇⠀⠀⠀⠀⠀⢀⡟⠀⠀⠀⠀⠀⠀
# echo ⠀⠇⣼⣿⡇⣿⡇⠀⣧⠀⢰⣿⣿⡿⢃⣤⡀⠀⠀⢀⡾⠉⠑⣆⣠⠏⠀⢸⡇⠀⠀⣸⡃⠀⠀⠀⠀⠀⣸⠁⠀⠀⠀⠀⠀⠀

# Carpeta donde se encuentran los wallpapers
WALLPAPER_DIR="$HOME/.config/hypr/wp"  # Cambia esto si tus wallpapers están en otro lugar
CONFIG_FILE="$HOME/.config/hypr/hyprpaper.conf"

# Obtener la lista de wallpapers
WALLPAPERS=("$WALLPAPER_DIR"/*)

# Comprobar si hay wallpapers disponibles
if [ ${#WALLPAPERS[@]} -eq 0 ]; then
    echo "No hay wallpapers disponibles en $WALLPAPER_DIR."
    exit 1
fi

# Mostrar la lista de wallpapers
echo "Selecciona un wallpaper:"
lsd -l "$WALLPAPER_DIR"
select wallpaper in "${WALLPAPERS[@]}"; do
    if [ -n "$wallpaper" ]; then
        echo "Estableciendo $wallpaper como wallpaper."
        
        # Cambiar el wallpaper usando hyprpaper
        hyprpaper set "$wallpaper"

        # Actualizar la configuración de hyprpaper

        # Actualizar la configuración de hyprpaper
        # para preload
        sed -i "s|^preload = .*|preload = $wallpaper|" "$CONFIG_FILE"

        # la de wallpaper    
        sed -i "s|^wallpaper = .*|wallpaper = ,$wallpaper|" "$CONFIG_FILE"

        # Reiniciar hyprpaper
        pkill hyprpaper
        hyprpaper &
      
       break
       printf "\n"

    else
        echo "Opción no válida."
    fi
done
