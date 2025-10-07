#!/usr/bin/env bash
curl -LO https://github.com/neovim/neovim/releases/download/nightly/nvim-linux-x86_64.tar.gz
sudo rm -rf /opt/nvim*
sudo tar -C /opt -xzf nvim-linux-x86_64.tar.gz
rm ./nvim-linux-x86_64.tar.gz

DOTFILES_PATH="$HOME/.dotfiles"
MODULE_PATH="$DOTFILES_PATH/nvim"
MODULE_FILE_NAME="init.lua"
MODULE_FILE_PATH="$MODULE_PATH/$MODULE_FILE_NAME"
SETUP_PATH="$HOME/.config/nvim"
SETUP_FILE_PATH="$SETUP_PATH/$MODULE_FILE_NAME"
COLORSCHEME_PATH="$HOME/doc/dracula_pro/themes/vim"
COLORSCHEME_AUTOLOAD_PATH="$COLORSCHEME_PATH/autoload"
COLORSCHEME_COLORS_PATH="$COLORSCHEME_PATH/colors"

ln -sf "$MODULE_PATH" "$SETUP_PATH"
cp -r "$COLORSCHEME_AUTOLOAD_PATH" "$SETUP_PATH/"
cp -r "$COLORSCHEME_COLORS_PATH" "$SETUP_PATH/"

# extra steps
# git config --global url."https://oauth2:${GITLAB_AUTH_TOKEN}@gitlab.com/".insteadOf "https://gitlab.com"
# mason instal ruby-lsp
