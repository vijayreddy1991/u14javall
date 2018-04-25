#!/bin/bash -e

echo "================ Installing oracle-java10-installer ================="
echo oracle-java10-installer shared/accepted-oracle-license-v1-1 select true | debconf-set-selections
sudo add-apt-repository -y ppa:linuxuprising/java
sudo apt update
sudo apt install oracle-java10-installer
