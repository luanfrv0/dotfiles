#!/usr/bin/env sh
ssh-keygen -t rsa -N "" -f ~/.ssh/id_rsa
cat ~/.ssh/id_rsa.pub
echo "--------------------------------------------------------------------"
echo "Succesfully generated ssh key!"
echo "Copy the key above and connect it to your github account on https://github.com/settings/ssh/new and https://gitlab.com/-/user_settings/ssh_keys"
echo "--------------------------------------------------------------------"
