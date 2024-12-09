#!/bin/bash

# sudo create_ap -n wlan1 testprinter royalties
# nmcli device wifi hotspot ifname wlan0 con-name piap ssid testprinter password royalties

#sudo create_ap --no-dnsmasq --no-virt -n wlan1 pietestAP royalties

#sudo systemctl stop dnsmasq
#sudo killall -9 dnsmasq 2>/dev/null

#sudo nmcli device set wlan0 managed no
#sudo systemctl stop NetworkManager
#sudo systemctl stop wpa_supplicant
#sudo pkill NetworkManager
#sudo pkill wpa_supplicant

sudo ip link set wlan0 down
sudo iw dev wlan0 set type __ap
sudo ip link set wlan0 up

echo "creating ap..."
sudo create_ap -n --no-virt wlan0 canonprinter royalties --config /home/kali/scripts/create_ap_config.conf
echo "ap up."

#echo "making pi bluetooth discoverable for bt signal killspot..."
#sudo hciconfig hci0 piscan
#sudo systemctl start piblue

# Gateway: 192.168.12.1
# ssh kali@192.168.12.1

