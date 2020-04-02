#!/bin/bash

##################################################################
# Autor: Gustavo Vital
#
# Script para a removão da interface gnome3 e instalação do xfce
# Última data de modificação: 30/03/2020
##################################################################

echo "rodar como root"
sleep 2

apt-get install task-xfce-desktop
tasksel

echo "Removendo o gnome"
sleep 2

apt-get autoremove --purge gnome*
