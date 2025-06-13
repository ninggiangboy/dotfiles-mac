#!/bin/bash

if ! command -v brew &>/dev/null; then
  echo "Homebrew not found. Installing..."
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
  # Add Homebrew to PATH for this session (adjust for Intel or ARM)
  if [[ "$(uname -m)" == "arm64" ]]; then
    eval "$(/opt/homebrew/bin/brew shellenv)"
  else
    eval "$(/usr/local/bin/brew shellenv)"
  fi
else
  echo "Homebrew already installed."
fi

echo "Updating Homebrew..."

brew update

brew tap homebrew/cask
brew tap homebrew/cask-versions

echo "Installing packages..."

brew install btop expat eza lazydocker lazygit zsh

# Install Casks
brew install --cask cursor dbvisualizer \
  iterm2 jetbrains-toolbox jordanbaird-ice maccy monitorcontrol \
  openkey openvpn-connect orbstack postman rectangle \
  sourcetree tableplus visual-studio-code aldente maccy

# Optional: Cleanup
brew cleanup

echo "Homebrew installation complete!"

echo "Config zshrc..."
cp -f /config/git/.zshrc ~/
echo "Config gitconfig..."
cp -f /config/git/.gitconfig ~/