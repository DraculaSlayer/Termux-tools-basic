#!/bin/bash

RED="\e[1;31m"
GREEN="\e[1;32m"
BLUE="\e[1;34m"
YELLOW="\e[1;33m"
CYAN="\e[1;36m"
NORMAL="\e[0m"
PUNTERO="${BLUE}[${NORMAL}${YELLOW}+${NORMAL}${BLUE}]${NORMAL}"

install() {
clear

termux-setup-storage

clear

echo -e "${RED}###########################################################${NORMAL}"
echo -e "${RED}#                                                         #${NORMAL}"
echo -e "${RED}#                                  ${NORMAL}${GREEN}Inicia el programa...${NORMAL}  ${RED}#${NORMAL}"
echo -e "${RED}#                                                         #${NORMAL}"
echo -e "${RED}###########################################################${NORMAL}"

echo -e "${PUNTERO} ${RED}Instalando root-repo y x11-repo${NORMAL}"

pkg install -y root-repo && pkg install -y x11-repo

echo -e "${PUNTERO} ${GREEN}root-repo y x11-repo Instalado :)${NORMAL}"

sleep 3
clear

echo -e "${PUNTERO} ${RED}Instalando nvim${NORMAL}"

pkg install -y neovim
mv ~/.config/nvim/ ./nvim/init.vim

echo -e "${PUNTERO} ${GREEN}nvim Instalado :)${NORMAL}"

sleep 3
clear

echo -e "${PUNTERO} ${RED}Instalando rust${NORMAL}"

pkg install -y rust

echo -e "${PUNTERO} ${GREEN}rust Instalado :)${NORMAL}"

sleep 3
clear

echo -e "{${PUNTERO} ${RED}Instalando el root${NORMAL}"

pkg install -y proot
git clone https://github.com/Anonymous-Zpt/T-root
cd T-root
bash install.sh
./start
cd

echo -e "${PUNTERO} ${GREEN}root Instalado :)${NORMAL}"

sleep 3
clear

echo -e "${PUNTERO} ${RED}Instalando terminal (myTermux)${NORMAL}"

git clone --depth=1 https://github.com/mayTermux/myTermux.git
cd ./myTermux
export COLUMNS LINES
./install.sh

echo -e "${PUNTERO} ${GREEN}Terminal Instalada${NORMAL}"

sleep 3
clear

echo -e "${BLUE}#####################################${NORMAL}"
echo -e "${BLUE}#                                   #${NORMAL}"
echo -e "${BLUE}#  ${NORMAL}${CYAN}Entorno listo para hackear :D:D${NORMAL}  ${BLUE}#${NORMAL}"
echo -e "${BLUE}#                                   #${NORMAL}"
echo -e "${BLUE}#####################################${NORMAL}"
}

clear
echo -e "${PUNTERO} ${CYAN}Herramienta: ${NORMAL}${GREEN}Termux-tools-basic${NORMAL}"
echo -e "${PUNTERO} ${CYAN}Creador: ${NORMAL}${GREEN}DraculsSlayer${NORMAL}"
echo -e "${PUNTERO} ${CYAN}Github: ${NORMAL}${GREEN}https://github.com/DraculaSlayer${NORMAL}\n"

echo -e "${PUNTERO} ${GREEN}Instalar: ${CYAN}1${NORMAL}${NORMAL}"
echo -e "${PUNTERO} ${RED}Salir: ${NORMAL}${CYAN}2${NORMAL}\n"

while true; do
read -p "R: " respuesta
if [[ $respuesta == "1" ]]
then
  install
  break
elif [[ $respuesta == "2" ]]
then
  echo -e "${RED}Chao :D${NORMAL}"
  break
else
  echo -e "${RED}NO HAS PUESTO NADA ):(${NORMAL}"
fi
done
