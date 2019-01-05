#!/usr/bin/env bash

set -euf -o pipefail

RUBY_VERSION=2.6.0

echo -e "\033[1;32mInstalling rbenv and Ruby $RUBY_VERSION...\033[0m"
brew install rbenv
eval "$(rbenv init -)"
rbenv install -f $RUBY_VERSION
rbenv global $RUBY_VERSION
gem install awesome_print bundler reek rubocop
echo -e "";
