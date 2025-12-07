#!/bin/bash
set -e

echo "Installing Dev Tools (Linux)..."

if [ "$EUID" -eq 0 ]; then
  echo "❌ Do NOT run this script as root. Run as a normal user."
  exit 1
fi

sudo apt update

echo "Installing CLI tools from tools-linux.txt..."

while read -r tool; do
  echo "Installing $tool..."
  sudo apt install -y "$tool"
done < tools-linux.txt

if ! command -v code &> /dev/null; then
  echo "Installing VS Code..."
  sudo snap install code --classic
fi

# add user to docker group (so sudo not required)
if getent group docker >/dev/null; then
  sudo usermod -aG docker $USER
fi

echo "Linux Dev Environment Installed"
