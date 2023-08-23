#!/bin/bash

# Check if the script is being run with superuser privileges
if [[ $EUID -ne 0 ]]; then
   echo "This script must be run as root. Please use sudo."
   exit 1
fi

# Function to handle errors
handle_error() {
   echo "An error occurred. Exiting..."
   exit 1
}

# Error handling
trap 'handle_error' ERR

# Update packages
apt-get update

# Upgrade installed packages (the y argument means always answer yes)
apt-get upgrade -y

# Perform distribution upgrade (the y argument means always answer yes)
apt-get dist-upgrade -y

echo "Updates and upgrades complete."

# Cron option: Add this to run the script automatically everyday at 9pm
# Use in the terminal "crontab -e" and add the following line:
# 0 21 * * * /path/to/your/Updates.sh
