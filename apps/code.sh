 echo "Installing VS Code..."
brew cask install visual-studio-code

brew install duti
duti -s com.microsoft.VSCode .css all
duti -s com.microsoft.VSCode .js all
duti -s com.microsoft.VSCode .jsx all
duti -s com.microsoft.VSCode .md all
duti -s com.microsoft.VSCode .txt all
echo ""
