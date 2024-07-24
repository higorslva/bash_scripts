#!/usr/bin/env bash

## Atualizando o repositório e um último upgrade ##
pacman -Syyu

## Mudança para o diretório de instalação do yay ##
cd ~/Downloads/
mkdir yay-git
cd yay-git
## Instalação do yay para o AUR ##
pacman -S --needed git base-devel && git clone https://aur.archlinux.org/yay.git && cd yay && makepkg -si

# ---------------------------------------------------------------------- #
# ----------------------------- EXECUÇÃO ----------------------------- #

## Download e instalaçao de programas do repositório oficial ##
pacman -S libreoffice-still libreoffice-still-pt-br bashtop code docker geogebra gimp git mysql-workbench noto-fonts-emoji jdk-openjdk openssh qbittorrent telegram-desktop unrar unzip virtualbox vlc zsh --needed
## Download e instalação de programas do AUR ##
yay -S ncurses5-compat-libs otf-monacob-git ttf-monaco tuxguitar --needed
