echo -e "\033[1;32mInstalling Sonos controller...\033[0m"
# Add cask drivers for stuff like the Sonos controller...
brew tap homebrew/cask-drivers
brew cask install sonos
echo -e ""
