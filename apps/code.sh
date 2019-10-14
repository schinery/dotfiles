 echo -e "\033[1;32mInstalling VS Code...\033[0m"
brew cask install visual-studio-code

brew install duti
duti -s com.microsoft.VSCode .css all
duti -s com.microsoft.VSCode .js all
duti -s com.microsoft.VSCode .jsx all
duti -s com.microsoft.VSCode .md all
duti -s com.microsoft.VSCode .txt all
echo -e ""
