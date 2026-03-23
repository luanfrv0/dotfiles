#!/usr/bin/env sh
#
# Usage:
#     ./setup.sh
#     ./setup.sh <module> (e.g ./setup.sh vim)
#
sudo apt update -y

. ~/.dotfiles/chromium/setup.sh
. ~/.dotfiles/drivers/setup.sh
. ~/.dotfiles/git/setup.sh
. ~/.dotfiles/bash/setup.sh
. ~/.dotfiles/tmux/setup.sh
. ~/.dotfiles/docker/setup.sh
. ~/.dotfiles/asdf/setup.sh
. ~/.dotfiles/ruby/setup.sh
. ~/.dotfiles/nodejs/setup.sh
. ~/.dotfiles/nvim/setup.sh
. ~/.dotfiles/alacritty/setup.sh
. ~/.dotfiles/ssh/setup.sh
. ~/.dotfiles/ang/setup.sh
#. ~/.dotfiles/yarn/setup.sh
#. ~/.dotfiles/curl/setup.sh
#. ~/.dotfiles/gpg/setup.sh
