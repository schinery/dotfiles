 echo "Installing iTerm2..."
brew cask install iterm2
curl -L https://iterm2.com/misc/install_shell_integration.sh | bash

# Don’t display the annoying prompt when quitting iTerm
defaults write com.googlecode.iterm2 PromptOnQuit -bool false
echo ""
