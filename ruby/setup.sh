#!/usr/bin/env sh
sudo apt install -y autoconf bison patch build-essential rustc libssl-dev libyaml-dev libreadline6-dev zlib1g-dev libgmp-dev libncurses5-dev libffi-dev libgdbm6 libgdbm-dev libdb-dev uuid-dev
source ~/.bashrc
asdf plugin add ruby
asdf install ruby 3.2.2
asdf global ruby 3.2.2
