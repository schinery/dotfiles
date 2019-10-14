 echo -e "\033[1;32mInstalling iTerm2...\033[0m"
brew cask install iterm2
curl -L https://iterm2.com/misc/install_shell_integration.sh | bash

# Don’t display the annoying prompt when quitting iTerm
defaults write com.googlecode.iterm2 PromptOnQuit -bool false
echo -e ""
