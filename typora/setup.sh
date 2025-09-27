#!/usr/bin/env sh
wget -qO - https://typora.io/linux/public-key.asc | sudo tee /etc/apt/trusted.gpg.d/typora.asc
sudo add-apt-repository 'deb https://typora.io/linux ./'
sudo apt update -y
sudo apt install -y typora
cd

DOWNLOAD_TYPORA_PATH="$HOME/typora.zip"
wget https://github.com/Zabriskije/Typora-GitHub-Themes/archive/refs/heads/main.zip -o $DOWNLOAD_TYPORA_PATH
unzip $DOWNLOAD_TYPORA_PATH
cp "$HOME/Typora-GitHub-Themes-main/github-dark-default.css" "$HOME/.config/Typora/themes/"
