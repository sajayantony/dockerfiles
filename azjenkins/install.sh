#!/bin/sh

sudo apt-get install -y --no-install-recommends apt-utils
sudo apt-get install -y lsb-release
AZ_REPO=$(lsb_release -cs)
echo "deb [arch=amd64] https://packages.microsoft.com/repos/azure-cli/ $AZ_REPO main" | \
    sudo tee /etc/apt/sources.list.d/azure-cli.list

echo "Adding KEY"
curl -L https://packages.microsoft.com/keys/microsoft.asc | sudo apt-key add -

sudo apt-get install -y apt-transport-https
sudo apt-get update 
sudo apt-get install -y azure-cli