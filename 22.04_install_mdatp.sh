#!/bin/bash

user=$(logname)

# Install curl
sudo apt-get install curl

# Install libplist-utils
sudo apt-get install libplist-utils

# Download Microsoft repository configuration
curl -o microsoft.list https://packages.microsoft.com/config/ubuntu/22.04/prod.list
sudo mv ./microsoft.list /etc/apt/sources.list.d/microsoft-prod.list

# Install gpg and gnupg
sudo apt-get install gpg
sudo apt-get install gnupg

# Import Microsoft GPG key
curl -sSL https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor | sudo tee /etc/apt/trusted.gpg.d/microsoft.gpg > /dev/null

# Install apt-transport-https
sudo apt-get install apt-transport-https

# Update package lists
sudo apt-get update

# Install Microsoft Defender ATP (mdatp)
sudo apt-get install mdatp -y

# Display contents of /etc/apt/sources.list.d/
cat /etc/apt/sources.list.d/*

# Install mdatp with the Jammy repository target
sudo apt -t jammy install mdatp

# Executing Python file
sudo python3 /home/$user/MDE-for-Linux/MicrosoftDefenderATPOnboardingLinuxServer.py

# sleep 10s for generating .json file
sleep 10

# Status of MDATP Service
sudo systemctl status mdatp.service

# Microsoft Defender
sudo mdatp

# Check Health for MDATP
sudo mdatp health
