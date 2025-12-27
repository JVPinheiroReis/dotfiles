#!/usr/bin/env bash

current_theme=$(dconf read /org/gnome/desktop/interface/color-scheme)

if [[ $current_theme == "'prefer-dark'" ]]; then
    dconf write /org/gnome/desktop/interface/color-scheme "'prefer-light'"
else
    dconf write /org/gnome/desktop/interface/color-scheme "'prefer-dark'"
fi
