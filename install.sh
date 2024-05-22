#!/bin/bash

termux-setup-storage

echo "Inicia el programa..."

echo "Instalando root-repo y x11-repo"

pkg install root-repo && pkg install x11-repo

echo "root-repo y x11-repo Instalado :)"

echo "Instalando nvim"

pkg install neovim

echo "nvim Instalado :)"

echo "Instalando rust"

pkg install rust

echo "rust Instalado :)"

echo "Instalando python"

pkg install python

echo "python Instalando :)"

echo "Instalando proot-distro"

pkg install proot-distro

echo "proot-distro Instalado"

echo "Entorno listo para hackear"
