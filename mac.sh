#!/bin/bash
set -e

echo "Installing Dev Tools (MacOS)..."

if ! command -v brew &> /dev/null; then
  echo "Installing Homebrew..."
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
fi

echo "Installing tools from mac-tools.txt..."
while read -r tool; do
  [[ -z "$tool" || "$tool" =~ ^

  if [[ "$tool" == cask:* ]]; then
    app="${tool#cask:}"
    brew install --cask "$app"
  else
    brew install "$tool"
  fi
done < mac-tools.txt

echo "MacOS Dev Environment Installed"
