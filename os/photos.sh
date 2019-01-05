#!/usr/bin/env bash

set -euf -o pipefail

echo -e "\033[1;32mConfiguring photos...\033[0m"

# Close any open System Preferences panes, to prevent them from overriding
# settings we’re about to change
osascript -e 'Tell application "System Preferences" to quit'

# Prevent Photos from opening automatically when devices are plugged in
defaults -currentHost write com.apple.ImageCapture disableHotPlug -bool true

# killall "Photos" &> /dev/null

echo -e ""
