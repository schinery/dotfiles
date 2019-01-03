#!/usr/bin/env bash

set -euf -o pipefail

read -p "Do you want to try and (re)install your brew and mas installed apps? (y/n) " -n 1;
echo "";
if [[ $REPLY =~ ^[Yy]$ ]]; then
  ./cask.sh
  ./mas.sh
  ./atom.sh
fi;
