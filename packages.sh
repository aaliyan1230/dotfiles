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
# Visual Studio Code
sudo apt-get install wget gpg
wget -qO- https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > packages.microsoft.gpg
sudo install -D -o root -g root -m 644 packages.microsoft.gpg /etc/apt/keyrings/packages.microsoft.gpg
sudo sh -c 'echo "deb [arch=amd64,arm64,armhf signed-by=/etc/apt/keyrings/packages.microsoft.gpg] https://packages.microsoft.com/repos/code stable main" > /etc/apt/sources.list.d/vscode.list'
rm -f packages.microsoft.gpg
sudo apt install apt-transport-https
sudo apt update
sudo apt install code 

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
sudo snap install postman # Postman

# Install pgAdmin
sudo curl https://www.pgadmin.org/static/packages_pgadmin_org.pub | sudo apt-key add
sudo sh -c 'echo "deb https://ftp.postgresql.org/pub/pgadmin/pgadmin4/apt/$(lsb_release -cs) pgadmin4 main" > /etc/apt/sources.list.d/pgadmin4.list && apt update'
sudo apt install pgadmin4

# Install gh ang ghcs ghce
sudo sudo apt install gh
gh extension install github/copilot-cli

# Install Google Chrome
sudo apt update
sudo sh -c 'echo "deb https://ftp.postgresql.org/pub/pgadmin/pgadmin4/apt/$(lsb_release -cs) pgadmin4 main" > /etc/apt/sources.list.d/pgadmin4.list && apt update'
sudo dpkg -i google-chrome-stable_current_amd64.deb
sudo apt-get install -f


echo "Package installation complete!"
