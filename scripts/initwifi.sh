#sudo systemctl stop dnsmasq
#sudo killall dnsmasq
#sudo systemctl start dnsmasq

sudo iw dev wlan0 set power_save off

sudo ip link set wlan1 down
sudo iw dev wlan1 interface add wlan1mon type monitor
sudo iw dev wlan1 interface add wlan1ap type managed
sudo ip link set wlan1mon up
sudo ip link set wlan1ap up
