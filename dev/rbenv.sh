RUBY_VERSION=2.7.1

echo "Installing rbenv and Ruby $RUBY_VERSION..."
brew install rbenv
eval "$(rbenv init -)"
rbenv install -f $RUBY_VERSION
rbenv global $RUBY_VERSION
gem install awesome_print bundler reek rubocop
echo "";
