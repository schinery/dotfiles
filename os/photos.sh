 echo "Configuring photos..."

# Close any open System Preferences panes, to prevent them from overriding
# settings we’re about to change
osascript -e 'Tell application "System Preferences" to quit'

# Prevent Photos from opening automatically when devices are plugged in
defaults -currentHost write com.apple.ImageCapture disableHotPlug -bool true

# killall "Photos" &> /dev/null

echo ""
