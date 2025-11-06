#!/usr/bin/env sh
#
# Usage:
#     ./setup.sh
#     ./setup.sh <module> (e.g ./setup.sh vim)
#
if [ $# -eq 0 ]; then
  sudo apt update -y

  . ~/.dotfiles/curl/setup.sh
  . ~/.dotfiles/gpg/setup.sh
  . ~/.dotfiles/git/setup.sh
  . ~/.dotfiles/bash/setup.sh
  . ~/.dotfiles/alacritty/setup.sh
  . ~/.dotfiles/tmux/setup.sh
  . ~/.dotfiles/bat/setup.sh
  . ~/.dotfiles/asdf/setup.sh
  . ~/.dotfiles/ibm-plex-mono/setup.sh
  . ~/.dotfiles/docker/setup.sh
  . ~/.dotfiles/nvim/setup.sh
  . ~/.dotfiles/typora/setup.sh
  . ~/.dotfiles/chrome/setup.sh
  . ~/.dotfiles/dropbox/setup.sh
elif [ $1 = "wsl" ];then
  sudo apt update -y

  . ~/.dotfiles/curl/setup.sh
  . ~/.dotfiles/gpg/setup.sh
  . ~/.dotfiles/git/setup.sh
  . ~/.dotfiles/bash/setup.sh
  . ~/.dotfiles/tmux/setup.sh
  . ~/.dotfiles/bat/setup.sh
  . ~/.dotfiles/asdf/setup.sh
  . ~/.dotfiles/ibm-plex-mono/setup.sh
  . ~/.dotfiles/nvim/setup.sh
else
  . ~/.dotfiles/$1/setup.sh
fi
