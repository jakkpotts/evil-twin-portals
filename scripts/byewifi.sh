#!/bin/bash

nmcli connection down homewifi
sudo nmcli device set wlan0 managed no

sleep 2
sudo systemctl stop NetworkManager
sudo systemctl stop wpa_supplicant

sudo pkill NetworkManager
sudo pkill wpa_supplicant

#sudo ip link set wlan0 down
#sudo iw dev wlan0 set type __ap
#sudo ip link set wlan0 up

sudo pkill dnsmasq

#sudo create_ap -n --no-virt wlan0 canonprinter royalties --config /home/kali/scripts/create_ap_config.conf
sudo systemctl restart hotspot
sudo systemctl restart piblue
