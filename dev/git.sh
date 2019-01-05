#!/usr/bin/env bash

set -euf -o pipefail

echo -e "\033[1;32mInstalling Git and Git tools...\033[0m"
brew install git git-flow-avh bash-git-prompt
echo -e ""

read -p "Do you want to set your global git creds? (y/n) " -n 1;
echo -e "";
if [[ $REPLY =~ ^[Yy]$ ]]; then
  read -p "What do you want to set as your global Git name? "
  git config --global user.name $REPLY

  read -p "What do you want to set as your global Git email? "
  git config --global user.email $REPLY
  echo -e "";
fi;
