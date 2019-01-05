#!/usr/bin/env bash

set -euf -o pipefail

echo -e "\033[1;32mInstalling Mullvad VPN...\033[0m"
brew cask install mullvadvpn
echo -e ""
