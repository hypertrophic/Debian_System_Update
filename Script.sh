#!/bin/bash

# Check if the script is being run with superuser privileges
if [[ $EUID -ne 0 ]]; then
   echo "This script must be run as root. Please use sudo."
   exit 1
fi

# Update package index
apt-get update

# Upgrade installed packages
apt-get upgrade -y

# Perform distribution upgrade
apt-get dist-upgrade -y

echo "Updates and upgrades complete."
