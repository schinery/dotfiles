 echo -e "\033[1;32mInstalling Flutter iOS deps...\033[0m"
brew update
brew install --HEAD usbmuxd
brew link usbmuxd
brew install --HEAD libimobiledevice
brew install ideviceinstaller
brew install ios-deploy
brew install cocoapods
pod setup
echo -e "";
