#!/usr/bin/env bash

set -euf -o pipefail

is_pg_installed() {
  type pg_ctl >/dev/null 2>&1
}

if ! is_pg_installed; then
  echo -e "\033[1;32mInstalling Postgres and tools...\033[0m"
  brew install postgres
  brew services start postgresql
  brew cask reinstall psequel
else
  echo -e "\033[1;34m- Postgres already installed\033[0m"
fi
