#!/bin/bash

##################################################################
# Autor: Gustavo Vital
#
# Script para a removão da interface gnome3 e instalação do kde-
# plasma.
# Última data de modificação: 6/01/2019
##################################################################

echo ""
echo "====================================================================="
echo "      Script de Instalação da Interface KDE e remoção do GNOME"
echo "====================================================================="
echo ""
echo "  O procedimento a seguir irá instalar a interface gráfica KDE-Plasma"
echo "  e removerá a interface gráfica do GNOME 3. ATENÇÂO: A MUDANÇA SERÁ "
echo "  DEFINITIVA!"
echo ""
read -p "Deseja continuar? (y/N) " answer

if [[ $answer = "y" ]]; then
  echo "====================================================================="
  echo "                Iniciando a Instalação do KDE-full"
  echo "====================================================================="
  sleep 1
  echo "---------------------------------------------------------------------"
  echo "                    Instalando o KDE-Full"
  echo "---------------------------------------------------------------------"
  sleep 1
  apt-get install kde-full -y
  apt-get apt-get install kde-standard -y
  echo "---------------------------------------------------------------------"
  echo "                    Instalando o KDE-Plasma"
  echo "---------------------------------------------------------------------"
  sleep 1
  apt-get install kde-plasma-desktop -y
  echo "---------------------------------------------------------------------"
  echo "                     Removendo o GNOME 3"
  echo "---------------------------------------------------------------------"
  sleep 1
  apt-get autoremove --purge gnome*
  echo ""
  echo "====================================================================="
  echo "                      Instalação Concluida"
  echo "====================================================================="
  echo ""
  echo ""
  read -p "Deseja iniciar uma nova sessão agora? (y/N)" answer2

  if [[ $answer2 = "y" ]]; then
    echo "====================================================================="
    echo "                     Iniciando Nova Sessão"
    echo "====================================================================="
    sleep 2
    reboot
  else
    exit
  fi

else
  echo "====================================================================="
  echo "                      Instalação Cancelada"
  echo "====================================================================="
fi
