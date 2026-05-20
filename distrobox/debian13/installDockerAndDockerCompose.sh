#!/bin/bash
# Source: https://docs.docker.com/engine/install/debian/

# Uninstall potential conflicting packages
sudo apt remove $(dpkg --get-selections docker.io docker-compose docker-doc podman-docker containerd runc | cut -f1)

# Install Docker Engine using apt
# Add Docker's official GPG key:
sudo apt update
sudo apt install ca-certificates curl
sudo install -m 0755 -d /etc/apt/keyrings
sudo curl -fsSL https://download.docker.com/linux/debian/gpg -o /etc/apt/keyrings/docker.asc
sudo chmod a+r /etc/apt/keyrings/docker.asc

# Add the repository to Apt sources:
sudo tee /etc/apt/sources.list.d/docker.sources <<EOF
Types: deb
URIs: https://download.docker.com/linux/debian
Suites: $(. /etc/os-release && echo "$VERSION_CODENAME")
Components: stable
Architectures: $(dpkg --print-architecture)
Signed-By: /etc/apt/keyrings/docker.asc
EOF

sudo apt update

# Install latest Docker version
sudo apt install docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin

# Verify running status
sudo systemctl status docker

# Check the status of Docker
if systemctl is-active --quiet docker; then
    echo "Docker is already running."
else
    echo "Docker is not running. Starting Docker..."
    sudo systemctl start docker

    # Verify if it started successfully
    if systemctl is-active --quiet docker; then
        echo "Docker started successfully."
    else
        echo "Failed to start Docker."
    fi
fi
