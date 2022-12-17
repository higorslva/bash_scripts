#!/bin/bash

pacman -S plasma kio-extras manjaro-kde-settings sddm-breath-theme manjaro-settings-manager-knotifier manjaro-settings-manager-kcm plasma5-themes-breath
systemctl enable sddm.service --force