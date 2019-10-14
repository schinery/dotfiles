 echo -e "\033[1;32mInstalling Fliqlo...\033[0m"
# Fliqlo clock screensaver
brew cask install fliqlo
# Set Fliqlo as the screensaver
defaults -currentHost write com.apple.screensaver moduleDict -dict moduleName Fliqlo path ~/Library/Screen\ Savers/Fliqlo.saver type 0
echo -e ""
