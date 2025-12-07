#!/bin/bash
set -e

echo "Installing Dev Tools (MacOS)..."

if ! command -v brew &> /dev/null; then
  echo "Installing Homebrew..."
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
fi

echo "Installing CLI tools..."
while read -r tool; do
  brew install "$tool"
done < mac-tools.txt

echo "Installing GUI apps (casks)..."
while read -r app; do
  brew install --cask "$app"
done < mac-tools.txt

echo "MacOS Dev Environment Installed"
