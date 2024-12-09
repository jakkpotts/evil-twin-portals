sudo systemctl stop hotspot
#sudo systemctl stop piblue
sudo create_ap --stop wlan0
sudo systemctl stop dnsmasq
sudo pkill dnsmasq
sudo systemctl restart NetworkManager
sudo ip link set wlan0 down
sudo iw dev wlan0 set type managed
sudo ip link set wlan0 up
sleep 2
sudo nmcli device set wlan0 managed yes
sleep 5
nmcli connection up homewifi
