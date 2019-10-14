is_brew_installed() {
  type brew >/dev/null 2>&1
}

if ! is_brew_installed; then
  echo -e "\033[1;32mInstalling Brew...\033[0m"
  /usr/bin/ruby echo -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
else
  echo -e "\033[1;32mBrew is already installed, updating...\033[0m"
fi

# Make sure we’re using the latest Homebrew.
brew update

# Upgrade any already-installed formulae.
brew upgrade

# Save Homebrew’s installed location.
BREW_PREFIX=$(brew --prefix)

# Install GNU core utilities (those that come with macOS are outdated).
# Don’t forget to add `$(brew --prefix coreutils)/libexec/gnubin` to `$PATH`.
brew install coreutils
ln -s "${BREW_PREFIX}/bin/gsha256sum" "${BREW_PREFIX}/bin/sha256sum"

# Install some other useful utilities like `sponge`.
brew install moreutils

# Install GNU `find`, `locate`, `updatedb`, and `xargs`, `g`-prefixed.
brew install findutils

# Install GNU `sed`, overwriting the built-in `sed`.
brew install gnu-sed --with-default-names

# Install `wget` 
brew install wget

# Install GnuPG to enable PGP-signing commits.
brew install gnupg

# Install other stuff...
brew install cask openssh openssl rsync screen thefuck

# Install oh-my-zsh...
sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

# Install env files...
echo -e "\033[1;32mInstalling env files...\033[0m";

echo -e "";
rsync --exclude ".git" \
      --exclude "apps" \
      --exclude "brew" \
      --exclude "dev" \
      --exclude "env" \
      --exclude "os" \
      --exclude ".DS_Store" \
      --exclude "install.sh" \
      --exclude "LICENSE.md" \
      --exclude "README.md" \
      -avh --no-perms . ~;
