#!/usr/bin/env bash

SCRIPT_DIR="$(dirname "$(readlink -f "$0")")"
echo "Script directory: $SCRIPT_DIR"

WALLPAPER_DIR="$HOME/wallpapers/"
echo "Wallpaper directory: $WALLPAPER_DIR"

NEW_WALLPAPER=$(find "$WALLPAPER_DIR" -type f -not -path '*/\.git/*' | shuf -n 1)
echo "New wallpaper: $NEW_WALLPAPER"

"$SCRIPT_DIR/wallpaper.sh" "$NEW_WALLPAPER"
