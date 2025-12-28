#!/usr/bin/env bash
sudo apt install -y fonts-ibm-plex
sudo fc-cache -fv

DOTFILES_PATH="$HOME/.dotfiles"
bash "$DOTFILES_PATH/getnf/setup.sh"
getnf -i IBMPlexMono
sudo fc-cache
