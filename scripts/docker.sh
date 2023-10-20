#!/bin/bash

# Print statement as requested
echo "Script by EvilGenius: Starting docker | docker-compose installation"

# Update the system and install necessary packages
sudo apt-get update
sudo apt-get install -y ca-certificates curl gnupg

# Add Docker's official GPG key and setup the repository
sudo install -m 0755 -d /etc/apt/keyrings
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /etc/apt/keyrings/docker.gpg
sudo chmod a+r /etc/apt/keyrings/docker.gpg

echo \
  "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.gpg] https://download.docker.com/linux/ubuntu \
  $(. /etc/os-release && echo "$VERSION_CODENAME") stable" | \
  sudo tee /etc/apt/sources.list.d/docker.list > /dev/null

sudo apt-get update

# Install Docker
sudo apt-get install -y docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin

# Run hello-world to verify Docker installation
sudo docker run hello-world

# Install Docker Compose
sudo apt-get update
sudo apt-get install -y docker-compose-plugin

# Check Docker Compose version
docker compose version

# Final printout statement
echo "Docker and Docker Compose have been installed."