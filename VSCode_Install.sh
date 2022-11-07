#!/bin/bash
#github.com/higorslva

#Removendo eventuais travas do dpkg
sudo rm /var/lib/dpkg/lock-frontend
sudo rm /var/cache/apt/archives/lock


touch -> vscode-installer.log
mkdir /home/"$USER"/vscode-tmp
cd /home/"$USER"/vscode-tmp || exit
sudo apt update
wget -c https://code.visualstudio.com/sha/download?build=stable&os=linux-deb-x64
sudo apt install ./*.deb | sudo tee vscode-installer.log
cd || exit
rm -rf /home/"$USER"/vscode-tmp
echo "Concluído"
echo "Se ocorreu algum erro, veja o vscode-installer.log"
