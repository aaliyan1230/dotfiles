#!/bin/bash

# Update package lists
sudo apt update

# Install essential packages
sudo apt install build-essential git curl wget

# Install python
sudo apt install python3 python3-pip

# Install Node.js and npm with nvm
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.0/install.sh | bash
source ~/.bashrc
nvm install 18

# Install Yarn
npm install -g yarn

# Install development tools
sudo apt install code # Visual Studio Code
sudo apt install docker # Docker
sudo apt install docker-compose # Docker Compose

# Install Go
sudo apt install golang

# Install Rust
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
source $HOME/.cargo/env

# Install C++
sudo apt install g++

# Install api tooling
sudo apt install postman # Postman

# Install pgAdmin
sudo apt install pgadmin4

# Install gh ang ghcs ghce
sudo sudo apt install gh
gh extension install github/copilot-cli

# Install Google Chrome
sudo apt install google-chrome-stable

echo "Package installation complete!"