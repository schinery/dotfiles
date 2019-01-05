#!/usr/bin/env bash

set -euf -o pipefail

echo -e "\033[1;32mInstalling Boxcryptor...\033[0m"
# NOTE: Need to use --force if already installed...
brew cask install boxcryptor # --force
echo -e ""
