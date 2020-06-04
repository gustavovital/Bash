#!/bin/bash

##################################################################
# Autor: Gustavo Vital
#
# Script para a removão da interface gnome3 e instalação do kde-
# plasma.
# Última data de modificação: 6/01/2019
##################################################################


apt-get install kde-full -y
apt-get apt-get install kde-standard -y
apt-get install kde-plasma-desktop -y

echo "Removendo o gnome"

apt autoremove --purge gnome*
