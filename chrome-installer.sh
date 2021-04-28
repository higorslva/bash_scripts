#!/bin/bash
#github.com/higorslva
touch -> chrome-installer.log
mkdir /home/$USER/chrome-tmp
cd /home/$USER/chrome-tmp
sudo apt-get update
wget -c https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo apt install ./google-chrome-stable_current_amd64.deb -> chrome-installer.log
cd
rm -rf /home/$USER/chrome-tmp
echo "Concluído"
echo "Se ocorreu algum erro, veja o chrome-installer.log"
