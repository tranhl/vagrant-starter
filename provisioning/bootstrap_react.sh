#!/bin/bash

echo 'Creating temporary working directory...'
mkdir ~/.tmp
cd ~/.tmp

echo 'Installing base packages...'
sudo apt-get install -y build-essential
sudo apt-get install -y nfs-common portmap
sudo apt-get install -y wget
sudo apt-get install -y curl
sudo apt-get install cachefilesd
sudo echo "RUN=yes" > /etc/default/cachefilesd

# Platform specific provisioning
echo 'Installing Node.js and npm...'
curl -sL https://deb.nodesource.com/setup_8.x | sudo -E bash -
sudo apt-get install -y nodejs

echo 'Installing Yarn...'
curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | sudo apt-key add -
echo "deb https://dl.yarnpkg.com/debian/ stable main" | sudo tee /etc/apt/sources.list.d/yarn.list
sudo apt-get update
sudo apt-get install yarn

echo 'Setting up npm global package directory...'
mkdir ~/.npm-global
npm config set prefix '~/.npm-global'
echo 'export PATH=~/.npm-global/bin:$PATH' >> ~/.profile
. ~/.profile

# Cleanup
echo 'Performing cleanup...'
cd ~
rm -rf ~/.tmp

echo 'Provisioning complete!'