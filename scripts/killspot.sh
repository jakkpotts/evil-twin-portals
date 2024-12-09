sudo create_ap --stop wlan0
sudo pkill create_ap
echo "killed create_ap"

echo "stopping hotspot..."
sudo systemctl stop hotspot

echo "killing dnsmasq..."
sudo pkill dnsmasq
echo "restarting dnsmasq..."
sudo systemctl restart dnsmasq
echo "dnsmasq restarted."

echo "restarting hotspot service..."
sudo systemctl restart hotspot
