#!/usr/bin/env bash

sudo apt-get install ca-certificates gnupg curl
curl https://packages.cloud.google.com/apt/doc/apt-key.gpg | sudo gpg --dearmor -o /usr/share/keyrings/cloud.google.gpg
echo "deb [signed-by=/usr/share/keyrings/cloud.google.gpg] https://packages.cloud.google.com/apt cloud-sdk main" | sudo tee -a /etc/apt/sources.list.d/google-cloud-sdk.list
sudo apt-get update && sudo apt-get install google-cloud-cli
gcloud auth login
echo "EVERYTHING OK ---------------------------------------------"
gcloud auth configure-docker us-east1-docker.pkg.dev
sudo apt-get install google-cloud-cli-gke-gcloud-auth-plugin
sudo apt-get install kubectl

ANG_PATH="$HOME/dev/ferreri/angeplus"
mkdir -p $ANG_PATH
cd $ANG_PATH
git clone git@gitlab.com:ferreri/angeplus/angeplus-infra-local.git
git clone git@gitlab.com:ferreri/angeplus/angeplus-supply-web.git
git clone git@gitlab.com:ferreri/angeplus/angeplus-supply-svc.git

cd $ANG_PATH/angeplus-infra-local
./install.sh
cd $ANG_PATH

