#!/usr/bin/env bash

set -euf -o pipefail

install_brew_cask_apps() {
  brew install cask

  echo -e "\033[1;32mInstalling brew cask apps...\033[0m"
  # Appcleaner - Good for tiding up after removing an app
  brew cask install appcleaner --force

  # Boxcryptor - Cloud file encryption
  # NOTE: Need to use --force if already installed...
  # brew cask install boxcryptor --force

  # Firefox
  brew cask install firefox --force

  # Fliqlo clock screensaver
  brew cask install fliqlo --force

  # Google Stuff
  brew cask install google-chrome google-backup-and-sync --force

  # Mullvad VPN
  # brew cask install mullvad

  # Paragon - for NTFS read/write, requires account
  # brew cask install paragon-ntfs

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

  echo -e "\033[1;32mFinished installing brew apps\033[0m"
  echo ""
}

install_mas_apps() {
  brew install mas

  echo -e "\033[1;32mInstalling mas apps...\033[0m"
  mas install 1333542190 # 1Password 7 (7.0.4)
  mas install 405399194 # Kindle (1.21.1)
  mas install 406056744 # Evernote (7.1)
  mas install 410628904 # Wunderlist (3.4.8)
  mas install 425424353 # The Unarchiver (3.11.5)
  mas install 497799835 # Xcode (9.3.1)
  xcode-select --install
  echo -e "\033[1;32mFinished installing mas apps\033[0m"
  echo ""
}

install_software_updates() {
  echo -e "\033[1;32mInstalling macOS software updates...\033[0m"
  softwareupdate --install --all
  echo -e "\033[1;32mFinished macOS software updates\033[0m"
  echo ""
}

read -p "Do you want to try and (re)install your brew and mas installed apps? (y/n) " -n 1;
echo "";
if [[ $REPLY =~ ^[Yy]$ ]]; then
  install_brew_cask_apps
  install_mas_apps
  install_software_updates
  ./atom.sh
fi;
