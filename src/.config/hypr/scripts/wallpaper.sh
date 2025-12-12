#!/usr/bin/env bash

set -e

if [ -z "$1" ]; then
    echo "Usage: $0 <path_to_wallpaper>"
    exit 1
fi

hyprctl hyprpaper preload "$1"
hyprctl hyprpaper wallpaper ",$1"
