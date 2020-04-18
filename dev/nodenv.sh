NODE_VERSION=12.16.2

echo "Installing nodenv and Node $NODE_VERSION..."
brew install nodenv
eval "$(nodenv init -)"
nodenv install -f $NODE_VERSION
nodenv global $NODE_VERSION
nodenv local $NODE_VERSION
curl -o- -L https://yarnpkg.com/install.sh | bash
echo "";
 