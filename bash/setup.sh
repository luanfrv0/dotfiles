#!/usr/bin/env sh
chsh -s /bin/bash
sudo apt install -y bat
mkdir -p $HOME/.local/bin
ln -sf /usr/bin/batcat $HOME/.local/bin/bat
ln -sf ~/.dotfiles/bash/aliases ~/.aliases
ln -sf ~/.dotfiles/bash/bash_profile ~/.bash_profile
ln -sf ~/.dotfiles/bash/bashrc ~/.bashrc
