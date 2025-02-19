#!/usr/bin/env sh
curl -1sLf \
  'https://packages.konghq.com/public/insomnia/setup.deb.sh' \
  | sudo -E distro=ubuntu codename=focal bash
sudo apt update -y
sudo apt install -y insomnia
