#!/bin/bash

#Script que uso para instalação da interface Gnome Shell com os mínimos componentes que julgo necessário,
#com o mínimo de bloat da interface possível. Recomendado executar sem nenhuma interface gráfica e
#sem nenhum gerenciador de login instalados (SDDM, LightDM, etc).

#Após a instalação o GDM irá iniciar automaticamente. Não é necessário reiniciar a máquina.

echo 'Atualizando repositório'
pacman -Syyu

echo 'Instalação mínima do Gnome'
pacman -S  gnome-remote-desktop gnome-shell gnome-shell-extensions gnome-terminal nautilus gnome-tweaks gdm gedit evince gnome-disk-utility gnome-keyring gnome-photos gdm gnome-calculator gnome-calendar gnome-backgrounds gedit xf86-video-intel xdg-desktop-portal-gnome eog file-roller gnome-control-center --needed

#Caso possua o yay, descomente a linha abaixo. O pacote é necessário
#para instalação de extenções do site oficial, mesmo se usar Firefox
#ou derivados.

#yay -S chrome-gnome-shell-git
#git clone https://aur.archlinux.org/mutter-rounded.git && cd mutter-rounded && makepkg --nocheck -si 

echo ''
echo '--------------------'
echo 'Habilitando GDM'
echo '--------------------'
echo ''
systemctl enable gdm.service
systemctl start gdm.service
echo 'Concluído'
