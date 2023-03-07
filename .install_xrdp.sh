#!/bin/bash

# Update package list
sudo apt-get update

# Install XRDP
sudo apt-get install -y xrdp

# Enable XRDP service
sudo systemctl enable xrdp

# Start XRDP service
sudo systemctl start xrdp

# Add firewall rules to allow incoming RDP connections
sudo ufw allow 3389/tcp

echo "XRDP installed and enabled!"

sudo mkdir -p /var/lib/VaporDeviceManager/

sudo chmod a+w  /var/lib/VaporDeviceManager/

sudo mkdir -p /var/log/VaporDeviceManager/

sudo chmod a+w /var/log/VaporDeviceManager/

echo "Completed"
