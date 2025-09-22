#!/usr/bin/env bash
sudo apt install -y fonts-ibm-plex
sudo fc-cache -fv

curl -fsSL https://raw.githubusercontent.com/getnf/getnf/main/install.sh | bash
getnf -i IBMPlexMono
