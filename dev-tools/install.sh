#!/usr/bin/env bash

set -euf -o pipefail

install_dev_tools() {
  echo -e "\033[1;32mInstalling dev tools...\033[0m"

  # Comment out as you see fit...
  ./go.sh
  ./nodenv.sh
  ./postgres.sh
  ./rbenv.sh

  echo -e "\033[1;32mFinished installing dev tools\033[0m"
  echo ""
}

install_dev_tools
