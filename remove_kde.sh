#!/bin/bash

#       Script para remover minha instalação mínima do Gnome Shell no Arch Linux.
#       Caso não tenha instalado o Plasma usando meu script 'install_kde.sh',
#       recomendo fortemente para NÃO usar esse. Esse script pode não cobrir
#	alguns pacotes que você tenha instalado.


echo "Desabilitando o SDDM"

systemctl stop sddm.service
systemctl disable sddm.service

echo "Desinstalando Plasma"
sudo pacman -Rns plasma-wayland-session plasma-meta kde-system-meta kate konsole gwenview spectacle kvantum ark okular #libdbusmenu-glib
echo ''
echo ''
echo '-----------'
echo 'KDE Plasma removido'

