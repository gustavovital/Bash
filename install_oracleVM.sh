#!/bin/bash

##################################################################
# Autor: Gustavo Vital
#
# Script para a instalação do VirtualBox Oracle 5.2. Testado em
# Debian 9 (stretch)
# Última data de modificação: 6/01/2019
##################################################################

apt-get update
apt-get upgrade -y
    
add-apt-repository "deb http://download.virtualbox.org/virtualbox/debian stretch contrib"
  
wget -q https://www.virtualbox.org/download/oracle_vbox_2016.asc -O- | apt-key add -
wget -q https://www.virtualbox.org/download/oracle_vbox.asc -O- | apt-key add -
echo "====================================================================="
echo "                  Instalando o VirtualBox Oracle 5.2"
echo "====================================================================="
sleep 1
apt-get update
apt-get install virtualbox-5.2 -y
  
