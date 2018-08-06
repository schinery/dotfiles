#!/usr/bin/env bash

set -euf -o pipefail

NODE_VERSION=8.11.3
RUBY_VERSION=2.5.1

is_nodenv_installed() {
  type nodenv >/dev/null 2>&1
}

is_pg_installed() {
  type pg_ctl >/dev/null 2>&1
}

is_rbenv_installed() {
  type rbenv >/dev/null 2>&1
}

install_dev_tools() {
  echo -e "\033[1;32mInstalling dev tools...\033[0m"

  if ! is_nodenv_installed; then
    echo -e "\033[1;32mInstalling nodenv...\033[0m"
    brew install nodenv
    eval "$(nodenv init -)"
    nodenv install $NODE_VERSION
    nodenv global $NODE_VERSION
    nodenv local $NODE_VERSION
    npm i -g jshint
  else
    echo -e "\033[1;34m- nodenv already installed\033[0m"
  fi

  if ! is_pg_installed; then
    echo -e "\033[1;32mInstalling Postgres...\033[0m"
    brew install postgres
    brew services start postgresql
    brew cask reinstall psequel
  else
    echo -e "\033[1;34m- Postgres already installed\033[0m"
  fi

  if ! is_rbenv_installed; then
    echo -e "\033[1;32mInstalling rbenv...\033[0m"
    brew reinstall rbenv
    eval "$(rbenv init -)"
    rbenv install $RUBY_VERSION
    rbenv global $RUBY_VERSION
    gem install awesome_print bundler reek rubocop
  else
    echo -e "\033[1;34m- rbenv already installed\033[0m"
  fi

  echo -e "\033[1;32mFinished installing dev tools\033[0m"
  echo ""
}

install_dev_tools
