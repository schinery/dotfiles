#!/usr/bin/env bash

set -euf -o pipefail

brew install cask --force

echo -e "\033[1;32mInstalling brew cask apps...\033[0m"
# 1Password...
brew cask install 1password --force

# Appcleaner - Good for tiding up after removing an app
brew cask install appcleaner --force

# Boxcryptor - Cloud file encryption
# NOTE: Need to use --force if already installed...
brew cask install boxcryptor --force

# Firefox
brew cask install firefox --force

# Fliqlo clock screensaver
brew cask install fliqlo --force

# Google Stuff
brew cask install google-chrome google-backup-and-sync --force

# Mullvad VPN
brew cask install mullvad --force

# Paragon - for NTFS read/write, requires account
brew cask install paragon-ntfs --force

# Ngrok
brew cask install ngrok --force

# Java
brew cask install java --force

# iTerm and add iTerm shell intgrations
brew cask install iterm2 --force
curl -L https://iterm2.com/misc/install_shell_integration.sh | bash

# Slack
brew cask install slack --force

# Spotify
brew cask install spotify spotify-notifications --force

# Sourcetree
brew cask install sourcetree --force

# WhatsApp
brew cask install whatsapp --force

# VirtualBox
brew cask install virtualbox --force

echo -e "\033[1;32mFinished installing brew cask apps\033[0m"
echo ""
