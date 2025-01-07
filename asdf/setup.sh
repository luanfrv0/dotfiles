#!/usr/bin/env sh
git clone https://github.com/asdf-vm/asdf.git ~/.asdf
cd ~/.asdf
git checkout "$(git describe --abbrev=0 --tags)"
cd
ln -sf ~/.dotfiles/asdf/tool-versions ~/.tool-versions
source ~/.bashrc
. ~/.bashrc
