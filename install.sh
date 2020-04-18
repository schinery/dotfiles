echo "\033[1;31mWARNING: This script will attempt to install Brew, various apps and overwrite existing files in your home directory. ";
read -p "Are you sure you want to continue? (y/n) " -n 1;
echo "";
if [[ $REPLY =~ ^[Yy]$ ]]; then
  # Run install/setup scripts...
  (cd env && ./install.sh)
  ./brew/install.sh
  ./dev/install.sh
  ./apps/install.sh
  ./os/install.sh
  brew cleanup
  source ~/.bash_profile;
fi;
