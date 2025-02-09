#!/usr/bin/env sh
sudo pacman -S alacritty
mkdir -p ~/.config/alacritty
ln -sf ~/.dotfiles/alacritty/alacritty.yml ~/.config/alacritty/alacritty.yml
