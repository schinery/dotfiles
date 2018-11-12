#!/usr/bin/env bash

set -euf -o pipefail

RUBY_VERSION=2.5.1

is_rbenv_installed() {
  type rbenv >/dev/null 2>&1
}

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
