#!/usr/bin/env bash
asdf plugin add neovim
asdf install neovim nightly
asdf global neovim nightly

DOTFILES_PATH="$HOME/.dotfiles"
MODULE_PATH="$DOTFILES_PATH/nvim"
MODULE_FILE_NAME="init.lua"
MODULE_FILE_PATH="$MODULE_PATH/$MODULE_FILE_NAME"
SETUP_PATH="$HOME/.config/nvim"
COLORSCHEME_SETUP_PATH="$HOME/.local/nvim"
COLORSCHEME_PATH="$HOME/doc/dracula_pro/themes/vim"
COLORSCHEME_AUTOLOAD_PATH="$COLORSCHEME_SETUP_PATH/autoload"
COLORSCHEME_COLORS_PATH="$COLORSCHEME_SETUP_PATH/colors"

ln -sf "$MODULE_PATH" "$SETUP_PATH"
nvim +'call mkdir(stdpath("data")."/site/pack/themes/start", "p")' +q
cp -R $COLORSCHEME_PATH/ "$(nvim -es +"put =stdpath('data')" +print +'q!')"/site/pack/themes/start/dracula_pro
#cp -r "$COLORSCHEME_AUTOLOAD_PATH" "$SETUP_PATH/"
#cp -r "$COLORSCHEME_COLORS_PATH" "$SETUP_PATH/"

# extra steps
# git config --global url."https://oauth2:${GITLAB_AUTH_TOKEN}@gitlab.com/".insteadOf "https://gitlab.com"
# mason install ruby-lsp
# mason install typescript-language-server

bash "$DOTFILES_PATH/getnf/setup.sh"
bash "$DOTFILES_PATH/ibm-plex-mono/setup.sh"
