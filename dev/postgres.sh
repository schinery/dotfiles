#!/usr/bin/env bash

set -euf -o pipefail

echo -e "\033[1;32mInstalling Postgres and tools...\033[0m"
brew install postgres
brew services start postgresql
brew cask install psequel
echo -e "";
