#!/usr/bin/env bash

set -euf -o pipefail

NODE_VERSION=10.16.3

echo -e "\033[1;32mInstalling nodenv and Node $NODE_VERSION...\033[0m"
brew install nodenv
eval "$(nodenv init -)"
nodenv install -f $NODE_VERSION
nodenv global $NODE_VERSION
nodenv local $NODE_VERSION
curl -o- -L https://yarnpkg.com/install.sh | bash
# TODO: install some global npm packages like jshint
echo -e "";
 