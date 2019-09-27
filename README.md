# Dotfiles

A (semi-)automated setup of my macOS environment.

## Big Fat Warning!

If you want to give this a try, you should first fork this repository, review the code, and remove things you don’t want or need.

Don’t blindly use my settings unless you know what that entails. **Use at your own risk!**

## Before You Start

Before you run this, `Terminal.app` (or `iTerm.app` if you have that already installed) will need full disk access System Preferences. See [this](https://github.com/mathiasbynens/dotfiles/issues/849#issuecomment-436099833) for details.

## Install

To do the big bang install run the following:

```sh
./install.sh
```

This will install all bash files, Brew, apps and dev tools, as well as configure the OS. You will be prompted for input so don't just run and go make a cup of tea.

You can of course also run the various scripts individually.

Note: Most of the scripts in `apps` and `dev` require both Brew and Brew Cask to be installed for them to run.

## Thanks To...

Copy and pasted from some of the following:

- [Mathias Bynens](https://github.com/mathiasbynens/dotfiles)
- [Cameron Yule](https://github.com/cameronyule/dotfiles)

## License

This script is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).
