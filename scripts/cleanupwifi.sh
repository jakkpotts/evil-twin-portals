sudo iw dev wlan0 set power_save on

sudo ip link set wlan1mon down
sudo ip link set wlan1ap down
sudo iw dev wlan1mon del
sudo iw dev wlan1ap del
sudo ip link set wlan1 up
