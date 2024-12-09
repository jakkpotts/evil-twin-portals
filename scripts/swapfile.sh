#!/bin/bash

# make a swapfile
# Check current swap status
free -h

# Create a swap file (512MB)
sudo fallocate -l 1G /swapfile

# Set the correct permissions
sudo chmod 600 /swapfile

# Initialize the swap file
sudo mkswap /swapfile

# Enable the swap file
sudo swapon /swapfile

# Verify swap is active
free -h

# Optionally, set swappiness to 15 (temporary)
sudo sysctl vm.swappiness=15
