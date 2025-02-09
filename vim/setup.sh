#!/usr/bin/env sh

# TODO: fix build-dep https://askubuntu.com/a/1512043
#sudo apt build-dep -y vim
git clone https://github.com/vim/vim.git ~/vim
cd ~/vim
./configure --with-x --enable-python3interp
make
sudo make install
cd
rm -rf vim

mkdir ~/.vim
ln -sf ~/.dotfiles/vim/vimrc ~/.vimrc
ln -sf ~/.dotfiles/vim/coc-settings.json ~/.vim/coc-settings.json

mkdir -p ~/.vim/pack/plugins/start
cd ~/.vim/pack/plugins/start
git clone https://github.com/preservim/nerdtree.git
git clone https://github.com/neoclide/coc.nvim.git
git clone https://github.com/wakatime/vim-wakatime.git
git clone https://github.com/pangloss/vim-javascript.git
git clone https://github.com/leafgarland/typescript-vim.git
git clone https://github.com/MaxMEllon/vim-jsx-pretty.git
git clone git@github.com:cocopon/iceberg.vim.git
cd
