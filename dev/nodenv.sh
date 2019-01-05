#!/usr/bin/env bash

set -euf -o pipefail

NODE_VERSION=10.15.0

echo -e "\033[1;32mInstalling nodenv and Node $NODE_VERSION...\033[0m"
brew install nodenv
eval "$(nodenv init -)"
nodenv install -f $NODE_VERSION
nodenv global $NODE_VERSION
nodenv local $NODE_VERSION
# TODO: install some global npm packages like jshint
# TODO: test yarn with reinstall
# brew install yarn --without-node
brew install yarn --without-node
echo -e "";
