#!/usr/bin/env bash

set -euf -o pipefail

read -p "Do you want to try and (re)configure your OS? (y/n) " -n 1;
echo -e "";
if [[ $REPLY =~ ^[Yy]$ ]]; then
  dir="$(dirname "$0")"

  for file in $(ls $dir); do
    script="$dir/$file"
    [ "$file" != "install.sh" ] && [ -f "$script" ] && [ -x "$script" ] && "$script"
  done
fi;
