#!/bin/bash

echo ""
echo "====================================================================="
echo "              Script de Instalação do VirtualBox 5.2"
echo "====================================================================="
echo ""
echo "	O procedimento a seguir instalará o Oracle-VirtualBox na sua versão"
echo "	mais atual até o momento (5.2). Adicionará o PPA ao repositório, as"
echo "	chaves de segurança do pacote e atualizará o sistema."
echo ""
read -p "Deseja continuar? (y/N) " answer

if [[ $answer = "y" ]]; then
  echo ""
  echo "====================================================================="
  echo "                     Iniciando a Instalação"
  echo "====================================================================="
  sleep 2
  echo "====================================================================="
  echo "                     Atualizando o Sistema"
  echo "====================================================================="
  apt-get update
  apt-get upgrade -y
  echo "====================================================================="
  echo "                 Adicionando o VirtualBox PPA"
  echo "====================================================================="
  sleep 1
  add-apt-repository "deb http://download.virtualbox.org/virtualbox/debian stretch contrib"
  echo "====================================================================="
  echo "               Importando as Chaves de Assinatura dos Pacotes"
  echo "====================================================================="
  sleep 1
  wget -q https://www.virtualbox.org/download/oracle_vbox_2016.asc -O- | apt-key add -
  wget -q https://www.virtualbox.org/download/oracle_vbox.asc -O- | apt-key add -
  echo "====================================================================="
  echo "                  Instalando o VirtualBox Oracle 5.2"
  echo "====================================================================="
  sleep 1
  apt-get update
  apt-get install virtualbox-5.2 -y
fi
