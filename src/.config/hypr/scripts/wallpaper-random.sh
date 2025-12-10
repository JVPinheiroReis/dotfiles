#!/usr/bin/env bash

SCRIPT_DIR="$(dirname "$(readlink -f "$0")")"

WALLPAPER_DIR="$HOME/wallpapers/"
CURRENT_WALL=$(hyprctl hyprpaper listloaded)

WALLPAPER=$(find "$WALLPAPER_DIR" -type f -not -path '*/\.git/*' ! -name "$(basename "$CURRENT_WALL")" | shuf -n 1)

"$SCRIPT_DIR"/wallpaper.sh "$WALLPAPER"
