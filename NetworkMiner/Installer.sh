#!/bin/bash

# Download NetworkMiner and save it to /tmp/nm.zip
wget https://www.netresec.com/?download=NetworkMiner -O /tmp/nm.zip

# Unzip the downloaded file to /opt directory
sudo unzip /tmp/nm.zip -d /opt/

# Navigate to the extracted NetworkMiner directory
cd /opt/NetworkMiner*

# Make the NetworkMiner.exe file executable
sudo chmod +x NetworkMiner.exe

# Set write permissions for the AssembledFiles and Captures directories
sudo chmod -R go+w AssembledFiles/
sudo chmod -R go+w Captures/

# Notify the user that the script has completed
echo "NetworkMiner installation and setup completed."
