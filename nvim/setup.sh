#!/usr/bin/env bash
sudo apt install -y neovim

DOTFILES_PATH="$HOME/.dotfiles"
MODULE_PATH="$DOTFILES_PATH/nvim"
MODULE_FILE_PATH="$MODULE_PATH/init.vim"
SETUP_PATH="$HOME/.config/nvim"
SETUP_FILE_PATH="$SETUP_PATH/init.vim"

mkdir -p $SETUP_PATH
ln -sf "$MODULE_FILE_PATH" "$SETUP_FILE_PATH"

