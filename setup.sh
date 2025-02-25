#!/usr/bin/env sh
#
# script used for setting up a fresh installation of Ubuntu with custom dotfiles
#
# Usage:
#     ./setup.sh
#     ./setup.sh <module> (e.g ./setup.sh vim)
#
if [ $# -eq 0 ]; then
  echo 'updating apt packages...'
  sudo apt update -y

  . ~/.dotfiles/curl/setup.sh
  . ~/.dotfiles/gpg/setup.sh
  . ~/.dotfiles/git/setup.sh
  #. ~/.dotfiles/alacritty/setup.sh
  . ~/.dotfiles/bash/setup.sh
  . ~/.dotfiles/vim/setup.sh
  . ~/.dotfiles/asdf/setup.sh
  . ~/.dotfiles/ruby/setup.sh
  #. ~/.dotfiles/nodejs/setup.sh
  #. ~/.dotfiles/yarn/setup.sh
  #. ~/.dotfiles/python/setup.sh
  #. ~/.dotfiles/java/setup.sh
  #. ~/.dotfiles/tmux/setup.sh
  #. ~/.dotfiles/tmuxinator/setup.sh
  #. ~/.dotfiles/glab/setup.sh
  . ~/.dotfiles/spotify/setup.sh
  . ~/.dotfiles/vscode/setup.sh
  #. ~/.dotfiles/telegram/setup.sh
  #. ~/.dotfiles/insomnia/setup.sh
  #. ~/.dotfiles/typora/setup.sh
  #. ~/.dotfiles/jetbrains-mono/setup.sh
  . ~/.dotfiles/dropbox/setup.sh
  #. ~/.dotfiles/chrome/setup.sh
  #. ~/.dotfiles/dracula/setup.sh
elif [ $1 = "wsl" ];then
  . ~/.dotfiles/git/setup.sh
  . ~/.dotfiles/bash/setup.sh
  . ~/.dotfiles/asdf/setup.sh
  #. ~/.dotfiles/ruby/setup.sh
  #. ~/.dotfiles/nodejs/setup.sh
  #. ~/.dotfiles/yarn/setup.sh
  #. ~/.dotfiles/python/setup.sh
  #. ~/.dotfiles/java/setup.sh
  #. ~/.dotfiles/tmux/setup.sh
  #. ~/.dotfiles/tmuxinator/setup.sh
else
  . ~/.dotfiles/$1/setup.sh
fi
