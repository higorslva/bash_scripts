#!/bin/bash

#Script que uso para instalação da interface Plasma com os mínimos componentes que julgo necessário,
#com o mínimo de bloat da interface possível. Recomendado executar sem nenhuma interface gráfica e
#sem nenhum gerenciador de login (GDM, LightDM, etc).


echo "Atualizando banco de dados do repositório local"
pacman -Syyu

echo "Instalando KDE Minimal"
pacman -S plasma-meta plasma-wayland-session kde-system-meta latte-dock kwrite kate konsole gwenview spectacle kvantum ark libdbusmenu-glib okular --needed
echo ''
echo ''
echo 'Ativando SSDM'
systemctl enable sddm
systemctl start sddm
echo ''
echo 'Concluído'
