#!/usr/bin/env bash

set -euf -o pipefail

install_git() {
  local name="Git tools"

  echo -e "\033[1;32mInstalling $name...\033[0m"

  brew install git git-flow-avh bash-git-prompt
  
  echo -e "\033[1;32mFinished installing $name\033[0m"
  echo ""

  read -p "Do you want to set your global git creds? (y/n) " -n 1;
  echo "";
  if [[ $REPLY =~ ^[Yy]$ ]]; then
    read -p "What do you want to set as your global Git name? "
    git config --global user.name $REPLY

    read -p "What do you want to set as your global Git email? "
    git config --global user.email $REPLY
  fi;

  if [ ! -d ~/.git/git-flow-hooks ]; then
    echo -e "\033[1;32mGrabbing Git Flow Hooks...\033[0m"
    git clone git@github.com:jaspernbrouwer/git-flow-hooks.git ~/.git
    echo -e "\033[1;32mFinished configuring Git Flow Hooks\033[0m"
    echo ""
  fi
}

install_git
