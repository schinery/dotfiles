#!/usr/bin/env bash

set -euf -o pipefail

echo -e "\033[1;32mInstalling 1Password...\033[0m"
brew cask install 1password
echo -e ""
