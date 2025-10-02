#!/usr/bin/env bash
asdf plugin add neovim
asdf install neovim stable

DOTFILES_PATH="$HOME/.dotfiles"
MODULE_PATH="$DOTFILES_PATH/nvim"
MODULE_FILE_NAME="init.lua"
MODULE_FILE_PATH="$MODULE_PATH/$MODULE_FILE_NAME"
SETUP_PATH="$HOME/.config/nvim"
SETUP_FILE_PATH="$SETUP_PATH/$MODULE_FILE_NAME"

mkdir -p $SETUP_PATH
ln -sf "$MODULE_FILE_PATH" "$SETUP_FILE_PATH"

nvim +'call mkdir(stdpath("data")."/site/pack/themes/start", "p")' +q
cp -R "$HOME/doc/dracula_pro/themes/vim" "$(nvim -es +"put =stdpath('data')" +print +'q!')"/site/pack/themes/start/dracula_pro
