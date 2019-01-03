#!/usr/bin/env bash

set -euf -o pipefail

echo -e "\033[1;32mInstalling macOS software updates...\033[0m"
softwareupdate --install --all
echo -e "\033[1;32mFinished macOS software updates\033[0m"
echo ""

brew install mas --force

echo -e "\033[1;32mInstalling mas apps...\033[0m"
mas install 405399194 # Kindle (1.21.1)
mas install 406056744 # Evernote (7.1)
mas install 410628904 # Wunderlist (3.4.8)
mas install 425424353 # The Unarchiver (3.11.5)
mas install 497799835 # Xcode (9.3.1)
xcode-select --install
echo -e "\033[1;32mFinished installing mas apps\033[0m"
echo ""
