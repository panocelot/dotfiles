#!/bin/bash

sudo xbps-install -u xbps

sudo xbps-install -Syu

sudo xbps-install -y swayfx git neovim pfetch net-tools elogind htop foot ufw polkitd dbus ntp gammastep fzf Thunar firefox
echo "done downloading"

sudo ln -s /etc/sv/dbus /var/service
sudo ln -s /etc/sv/ufw /var/service
sudo ln -s /etc/sv/ntpd /var/service
sudo ufw enable

# git clone https://github.com/panocelot/dotfiles

pfetch

echo "rebooting..."

sudo reboot
