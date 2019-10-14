echo -e "\033[1;32mConfiguring computer name...\033[0m"
echo -e "";

read -p "Do you want to rename your computer? (y/n) " -n 1;
echo -e "";

if [[ $REPLY =~ ^[Yy]$ ]]; then
  # Ask for the administrator password upfront
  sudo -v

  # Keep-alive: update existing `sudo` time stamp until finished
  while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

  # Set computer name (as done via System Preferences → Sharing)
  read -p "What do you want you computer name to be? " -n 40;
  sudo scutil --set ComputerName $REPLY
  sudo scutil --set HostName $REPLY
  sudo scutil --set LocalHostName $REPLY
  sudo defaults write /Library/Preferences/SystemConfiguration/com.apple.smb.server NetBIOSName -string $REPLY

  echo -e "";
fi;
