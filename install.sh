#!/usr/bin/env bash

set -euf -o pipefail

echo -e "\033[1;31mWARNING: This script will attempt to install Brew, various apps and overwrite existing files in your home directory. \033[0m";
read -p "Are you sure you want to continue? (y/n) " -n 1;
echo -e "";
if [[ $REPLY =~ ^[Yy]$ ]]; then
  # Install dotfiles before anything else, so we can write to them if need be.
  echo -e "\033[1;32mInstalling dotfiles...\033[0m";
  echo -e "";
  rsync --exclude ".git" \
        --exclude "apps" \
        --exclude "brew" \
        --exclude "dev" \
        --exclude "os" \
        --exclude ".DS_Store" \
        --exclude "install.sh" \
        --exclude "LICENSE.md" \
        --exclude "README.md" \
        -avh --no-perms . ~;

  # TODO: Confirm if needed after new install...
  # chmod -R -x .aliases .bash_profile .bashrc .exports .extra .functions .gemrc .gitconfig .gitignore_global .inputrc .path

  # Run install/setup scripts...
  ./brew/install.sh
  ./dev/install.sh
  ./apps/install.sh
  ./os/install.sh
  brew cleanup
  source ~/.bash_profile;
fi;
