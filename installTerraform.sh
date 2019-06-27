#!/bin/bash

#make sure system is up to date
sudo apt update
sudo apt upgrade

#ensure unzip and wget and curl are installed
sudo apt install -y unzip wget
sudo apt-get install curl

#install azure cli
curl -sL https://aka.ms/InstallAzureCLIDeb | sudo bash

#download terraform zip
wget https://releases.hashicorp.com/terraform/0.12.3/terraform_0.12.3_linux_amd64.zip

#extract terraform zip
unzip terraform_*_linux_*.zip

#move terraform binary to /usr/local/bin folder
sudo mv terraform /usr/local/bin

#remove the downloaded zip file
rm terraform_*_linux_*.zip

#verify installation
terraform --version

#login to azure
az login
