#!/usr/bin/env bash

set -euf -o pipefail

is_node_installed() {
  type node >/dev/null 2>&1
}

is_nvm_installed() {
  type nvm >/dev/null 2>&1
}

is_pg_installed() {
  type pg_ctl >/dev/null 2>&1
}

is_rbenv_installed() {
  type rbenv >/dev/null 2>&1
}

install_dev_tools() {
  echo -e "\033[1;32mInstalling dev tools...\033[0m"

  if ! is_node_installed; then
    echo -e "\033[1;32mInstalling Node...\033[0m"
    brew install node
  fi

  if ! is_nvm_installed; then
    # TODO: Figure out why this always runs
    echo -e "\033[1;32mInstalling NVM...\033[0m"
    brew install nvm
  fi

  if ! is_pg_installed; then
    echo -e "\033[1;32mInstalling Postgres...\033[0m"
    brew install postgres
    brew services start postgresql
    brew cask install psequel
  fi

  if ! is_rbenv_installed; then
    echo -e "\033[1;32mInstalling rbenv...\033[0m"
    brew install rbenv
    eval "$(rbenv init -)"
    rbenv install 2.4.2
  fi

  rbenv global 2.4.2
  gem install awesome_print bundler reek rubocop

  echo -e "\033[1;32mFinished installing dev tools\033[0m"
  echo ""
}

install_dev_tools
