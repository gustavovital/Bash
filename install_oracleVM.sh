#!/bin/bash

##################################################################
# Autor: Gustavo Vital
#
# Script para a instalação do VirtualBox Oracle 6. Testado em
# Debian 10 (buster)
# Última data de modificação: 29/12/2019
##################################################################

apt-get update
apt-get upgrade -y
    
add-apt-repository "deb http://download.virtualbox.org/virtualbox/debian stretch contrib"
  
sudo apt -y install wget
wget -q https://www.virtualbox.org/download/oracle_vbox_2016.asc -O- | sudo apt-key add -
wget -q https://www.virtualbox.org/download/oracle_vbox.asc -O- | sudo apt-key add -
echo "====================================================================="
echo "                  Instalando o VirtualBox Oracle 5.2"
echo "====================================================================="
echo "deb [arch=amd64] http://download.virtualbox.org/virtualbox/debian bionic contrib" | tee /etc/apt/sources.list.d/virtualbox.list
apt update
apt install linux-headers-$(uname -r) dkms
apt install virtualbox-6.0 

cd ~/
wget https://download.virtualbox.org/virtualbox/6.0.0/Oracle_VM_VirtualBox_Extension_Pack-6.0.0.vbox-extpack
