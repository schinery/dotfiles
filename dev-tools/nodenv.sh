#!/usr/bin/env bash

set -euf -o pipefail

NODE_VERSION=10.15.0

is_nodenv_installed() {
  type nodenv >/dev/null 2>&1
}

if ! is_nodenv_installed; then
  echo -e "\033[1;32mInstalling nodenv and yarn...\033[0m"
  brew install nodenv yarn
  eval "$(nodenv init -)"
  nodenv install $NODE_VERSION
  nodenv global $NODE_VERSION
  nodenv local $NODE_VERSION
else
  echo -e "\033[1;34m- nodenv already installed\033[0m"
fi
