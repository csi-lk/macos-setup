#!/usr/bin/env bash

# Brew
# ----------------------------

# install
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
# Make sure we’re using the latest Homebrew.
brew update
# Upgrade any already-installed formulae.
brew upgrade
# Add coreutils
brew install coreutils

# Libraries
# ----------------------------

# grep
brew install grep
# gpg
brew install gpg
# imagemagick
brew install imagemagick --with-webp
# nodejs
brew install node
# node version manager (nvm)
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.34.0/install.sh | bash
# yarn
brew install yarn
# the fuck
brew install thefuck
# Bash
brew install bash
brew install bash-completion2

# Switch to using brew-installed bash as default shell
if ! fgrep -q "${BREW_PREFIX}/bin/bash" /etc/shells; then
  echo "${BREW_PREFIX}/bin/bash" | sudo tee -a /etc/shells;
  chsh -s "${BREW_PREFIX}/bin/bash";
fi;

# Apps
# ----------------------------

# Marta
brew cask install marta
# Keybase
brew cask install keybase

# Cleanup
# ----------------------------
brew cleanup
