#!/bin/bash

# Instalação de ipykernels e user
# para o funcionamento do atom-python

echo "RODAR O SCRIPT COMO ROOT"
sleep 4

# Atualizando o sistema:
apt-get update && apt-get upgrade

# Instalando o pip & pip3
apt-get install python3-pip -y
apt-get install python-pip -y

# Instalando o ipykernel e ipykernel3
python -m pip install ipykernel
python3 -m pip install ipykernel

pip install ipykernel
pip3 install ipykernel

# Instalando para usuários
python -m pip install --user
python3 -m pip install --user

# Instalando os pacotes do atom:

apm install hydrogen
apm install hydrogen-launcher
apm install file-icons
apm install atom-clock

# atualizar o script ----
# script pra windows? 
