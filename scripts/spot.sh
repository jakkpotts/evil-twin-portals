#!/bin/bash

sudo pkill dnsmasq
echo "killed dnsmasq."

sudo systemctl restart dnsmasq
echo "dnsmasq restarted."
