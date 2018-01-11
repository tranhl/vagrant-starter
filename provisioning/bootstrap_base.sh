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


# Cleanup
echo 'Performing cleanup...'
cd ~
rm -rf ~/.tmp

echo 'Provisioning complete!'