#!/bin/bash
#github.com/higorslva

#Removendo eventuais travas do dpkg
sudo rm /var/lib/dpkg/lock-frontend
sudo rm /var/cache/apt/archives/lock


touch -> chrome-installer.log
mkdir /home/"$USER"/chrome-tmp
cd /home/"$USER"/chrome-tmp || exit
sudo apt update
wget -c https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo apt install ./google-chrome-stable_current_amd64.deb | sudo tee chrome-installer.log
cd || exit
rm -rf /home/"$USER"/chrome-tmp
echo "Concluído"
echo "Se ocorreu algum erro, veja o chrome-installer.log"
