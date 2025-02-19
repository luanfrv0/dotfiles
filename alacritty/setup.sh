#!/usr/bin/env sh
sudo add-apt-repository ppa:aslatter/ppa -y
sudo apt update -y
sudo apt install -y alacritty
mkdir -p ~/.config/alacritty
ln -sf ~/.dotfiles/alacritty/alacritty.toml ~/.config/alacritty/alacritty.toml
