#!/usr/bin/env bash

set -euf -o pipefail

echo -e "\033[1;32mInstalling Atom...\033[0m"
brew cask install atom
apm install sync-settings
# TODO: is possible to set the right gist id?

brew install duti
duti -s com.github.atom .css all
duti -s com.github.atom .js all
duti -s com.github.atom .md all
duti -s com.github.atom .txt all
echo -e ""
