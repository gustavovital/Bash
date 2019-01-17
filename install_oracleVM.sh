#!/bin/bash

##################################################################
# Autor: Gustavo Vital
#
# Script para a instalação do VirtualBox Oracle 5.2. Testado em
# Debian 9 (stretch)
# Última data de modificação: 6/01/2019
##################################################################

echo ""
echo "====================================================================="
echo "              Script de Instalação do VirtualBox 5.2"
echo "====================================================================="
echo ""
echo "	O procedimento a seguir instalará o Oracle-VirtualBox na sua versão"
echo "	mais atual até o momento (5.2). Adicionará o PPA ao repositório, as"
echo "	chaves de segurança do pacote e atualizará o sistema."
echo ""
echo "Você deve ser um ROOT para continuar"
echo ""
read -p "Deseja continuar? (y/N) " answer

if [[ $answer = "y" ]]; then
  apt-get update
  apt-get upgrade -y
  echo "====================================================================="
  echo "                 Adicionando o VirtualBox PPA"
  echo "====================================================================="
  
  add-apt-repository "deb http://download.virtualbox.org/virtualbox/debian stretch contrib"
  
  wget -q https://www.virtualbox.org/download/oracle_vbox_2016.asc -O- | apt-key add -
  wget -q https://www.virtualbox.org/download/oracle_vbox.asc -O- | apt-key add -
  echo "====================================================================="
  echo "                  Instalando o VirtualBox Oracle 5.2"
  echo "====================================================================="
  sleep 1
  apt-get update
  apt-get install virtualbox-5.2 -y
  echo "====================================================================="
  echo "                       Instalação Concluida"
  echo "====================================================================="
else
  echo ""
  echo "====================================================================="
  echo "                       Instalação Cancelada"
  echo "====================================================================="
fi
