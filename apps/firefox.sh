#!/usr/bin/env bash

set -euf -o pipefail

echo -e "\033[1;32mInstalling Firefox...\033[0m"
brew cask install firefox
echo -e ""
