 echo -e "\033[1;32mConfiguring ssd...\033[0m"

# Close any open System Preferences panes, to prevent them from overriding
# settings we’re about to change
osascript -e 'Tell application "System Preferences" to quit'

# Ask for the administrator password upfront
sudo -v

# Keep-alive: update existing `sudo` time stamp until finished
while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

# Disable hibernation (speeds up entering sleep mode)
sudo pmset -a hibernatemode 0

# TODO: This won't work as the sleepimage is SIP protected...
# # Remove the sleep image file to save disk space
# sudo rm -f /private/var/vm/sleepimage
#
# # Create a zero-byte file instead…
# sudo touch /private/var/vm/sleepimage
#
# # …and make sure it can’t be rewritten
# sudo chflags uchg /private/var/vm/sleepimage

echo -e ""
