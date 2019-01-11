#!/usr/bin/env bash

set -euf -o pipefail

echo -e "\033[1;32mInstalling Docker...\033[0m"
brew cask install docker kitematic
echo -e "";
