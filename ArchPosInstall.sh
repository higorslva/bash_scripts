#!/usr/bin/env bash
# ----------------------------- VARIÁVEIS ----------------------------- #
#DIRETORIO_DOWNLOADS="$HOME/Downloads/programas"
# ---------------------------------------------------------------------- #

# ----------------------------- REQUISITOS ----------------------------- #

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
pacman -S libreoffice-still libreoffice-still-pt-br virtualbox flameshot atom bat bashtop code codeblocks docker geogebra gimp git mysql-workbench noto-fonts-emoji jdk-openjdk openssh postgreesql kleopatra gnome-keyring qbittorrent telegram-desktop unrar unzip virtualbox vlc zsh --needed

## Download e instalação de programas do AUR ##
yay -S adw-gtk3-git chrome-gnome-shell-git debtap eclipse-jee hunspell-pt-br makedeb ncurses5-compat-libs otf-monacob-git ttf-monaco tuxguitar --needed
