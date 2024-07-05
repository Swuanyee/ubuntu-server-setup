#!/bin/bash

# Check if a username is provided
if [ -z "$1" ]; then
  echo "Usage: ./setup.sh username"
  exit 1
fi

# Variables
USERNAME="$1"

# Update and upgrade the system
sudo apt update && sudo apt upgrade -y

# Add a new user with sudo privileges
sudo adduser $USERNAME
sudo usermod -aG sudo $USERNAME

# Copy SSH key to new user
rsync --archive --chown=$USERNAME:$USERNAME ~/.ssh /home/$USERNAME

# Configure firewall with UFW
sudo ufw allow OpenSSH
sudo ufw enable
sudo ufw status

echo "Initial server setup completed. You can now log in as $USERNAME."

