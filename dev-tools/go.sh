#!/usr/bin/env bash

set -euf -o pipefail

GO_VERSION=1.11.2

is_goenv_installed() {
  type goenv >/dev/null 2>&1
}

if ! is_goenv_installed; then
  echo -e "\033[1;32mInstalling Go...\033[0m"
  brew reinstall goenv
  eval "$(goenv init -)"
  goenv install $GO_VERSION
  goenv global $GO_VERSION
  goenv local $GO_VERSION

  go get -u golang.org/x/tools/cmd/godoc
  go get -u github.com/golang/dep/cmd/dep
  # go get -u golang.org/x/tools/cmd/vet
  go get -u github.com/golang/lint/golint
  # The below is for the Atom go-plus extension...
  go get -u golang.org/x/tools/cmd/goimports
  go get -u golang.org/x/tools/cmd/gorename
  go get -u github.com/sqs/goreturns
  go get -u github.com/mdempsky/gocode
  go get -u github.com/alecthomas/gometalinter
  go get -u github.com/zmb3/gogetdoc
  go get -u github.com/zmb3/goaddimport
  go get -u github.com/rogpeppe/godef
  go get -u golang.org/x/tools/cmd/guru
  go get -u github.com/fatih/gomodifytags
  go get -u github.com/tpng/gopkgs
else
  echo -e "\033[1;34m- Go already installed\033[0m"
fi
