#!/bin/bash

# Source: https://code.visualstudio.com/docs/setup/linux

# Automatically install the apt repository and signing key:
echo "code code/add-microsoft-repo boolean true" | sudo debconf-set-selections

# Install prerequisites and signing key
sudo apt update
sudo apt install -y wget gpg
wget -qO- https://packages.microsoft.com/keys/microsoft.asc | sudo gpg --dearmor -o /usr/share/keyrings/microsoft.gpg

# Create repo file using DEB822 format
cat <<EOF | sudo tee /etc/apt/sources.list.d/vscode.sources > /dev/null
Types: deb
URIs: https://packages.microsoft.com/repos/code
Suites: stable
Components: main
Architectures: amd64 arm64 armhf
Signed-By: /usr/share/keyrings/microsoft.gpg
EOF

# Update package cache and install package
sudo apt update
sudo apt install -y code
