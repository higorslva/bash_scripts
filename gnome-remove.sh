#!/bin/bash
#Execute o script com sudo ('sudo bash gnome-remove.sh')

#	Script para remover minha instalação mínima do Gnome Shell no Arch Linux.
#	Caso não tenha instalado o Gnome usando meu script 'minimal-gnome-install.sh',
#	recomendo fortemente para NÃO usar esse. Pode bagunçar o metapacote 'gnome' e
#	vários pacotes que esse script não cobre serão deixados para trás

echo 'Removendo Gnome shell e suas dependencias'
pacman -Rsn gnome-remote-desktop gnome-shell gnome-shell-extensions gnome-terminal nautilus gnome-tweaks gdm gedit gnome-disk-utility gnome-photos gdm gnome-calculator gnome-calendar gnome-backgrounds gedit xf86-video-intel xdg-desktop-portal-gnome eog file-roller 


#Caso tenha instalado o pacote abaixo com yay, descomente a linha a seguir
#yay -Rsn chrome-gnome-shell-git

echo ''
echo ''
echo '--------------------'
echo 'Desabilitando GDM'
echo '--------------------'
systemctl disable gdm.service
systemctl stop gdm.service
echo ''
echo ''
echo '--------------------'
echo 'Gnome Shell removido com sucesso'
echo '--------------------'
echo ''
