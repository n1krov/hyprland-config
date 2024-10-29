
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

# Colorines
readonly ROJO='\e[0;31m'
readonly VERDE='\e[0;32m'
readonly AZUL='\e[0;34m'
readonly AMARILLO='\e[0;33m'
readonly BLANCO='\e[0;37m'
readonly END='\e[0m'

# Función para manejar Ctrl+C
trap 'echo -e "\n${ROJO}[~] Saliendo...${END}"; exit 1' INT

# Directorio de wallpapers
WALLPAPER_DIR="$HOME/.config/hypr/wp"

# Archivo de configuración
CONFIG_FILE="$HOME/.config/hypr/hyprpaper.conf"

# Comprobar si el directorio de wallpapers existe
if [ ! -d "$WALLPAPER_DIR" ]; then
  echo -e "${ROJO}[~] Directorio de wallpapers no encontrado.${END}"
  exit 1
fi

# Obtener lista de wallpapers
WALLPAPERS=("$WALLPAPER_DIR"/*)

# Comprobar si hay wallpapers disponibles
if [ ${#WALLPAPERS[@]} -eq 0 ]; then
  echo -e "${ROJO}[~] No hay wallpapers disponibles en $WALLPAPER_DIR.${END}"
  exit 1
fi

# Mostrar lista de wallpapers
echo -e "${AZUL}[~] -------- Script Change Wallpaper by Z0SO --------${END}"
echo -e "${AZUL}[~] Selecciona un wallpaper:${END}"
# lsd -l "$WALLPAPER_DIR"

# Función para cambiar wallpaper
change_wallpaper() {
  local wallpaper="$1"
  echo -e "${VERDE}[~] Estableciendo $wallpaper como wallpaper.${END}"
  hyprpaper set "$wallpaper"
  sed -i "s|^preload = .*|preload = $wallpaper|" "$CONFIG_FILE"
  sed -i "s|^wallpaper = .*|wallpaper = ,$wallpaper|" "$CONFIG_FILE"
  pkill hyprpaper
  
  #nohup para que no se cierre al cerrar la terminal
  # ademas quiero qeu el stderror/stdout se vaya a dev/null
  nohup hyprpaper > /dev/null 2>&1 &
  sleep 0.2
  clear
  echo -e "${VERDE}[~] Wallpaper cambiado correctamente.${END}"
}

# Seleccionar wallpaper
select wallpaper in "${WALLPAPERS[@]}"; do
  if [ -n "$wallpaper" ]; then
    change_wallpaper "$wallpaper"
    break
  else
    echo -e "${ROJO}[~] Selecciona un wallpaper válido.${END}"
  fi
done

# Restaurar comportamiento normal de la terminal
# reset
# stty sane

exit 0
