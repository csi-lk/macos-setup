#!/usr/bin/env bash

# Brew
# ----------------------------

# Install brew
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
# Make sure we’re using the latest Homebrew.
brew update
# Upgrade any already-installed formulae.
brew upgrade
# Add coreutils
brew install coreutils

# Brew Software
# ----------------------------

# grep
brew install grep
# gpg
brew install gpg
# add gpg path to git
git config --global gpg.program $(which gpg)
# imagemagick
brew install imagemagick
# nodejs
brew install node
# node version manager (nvm)
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.34.0/install.sh | bash
# cask
brew install --cask rectangle
# the fuck
brew install thefuck
# Bash
brew install bash
brew install bash-completion2
# yarn
brew install yarn
# Fzf
brew install fzf

# Switch to using brew-installed bash as default shell
if ! fgrep -q "${BREW_PREFIX}/bin/bash" /etc/shells; then
  echo "${BREW_PREFIX}/bin/bash" | sudo tee -a /etc/shells
  chsh -s "${BREW_PREFIX}/bin/bash"
fi

# Oh My ZSH
# ----------------------------

sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ~/powerlevel10k
git clone --depth=1 https://github.com/bernardop/iterm-tab-color-oh-my-zsh.git ~/.oh-my-zsh/custom/plugins/iterm-tab-color
git clone --depth=1 https://github.com/trystan2k/zsh-tab-title ~/.oh-my-zsh/custom/plugins/zsh-tab-title
git clone --depth=1 https://github.com/Aloxaf/fzf-tab ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/fzf-tab
git clone --depth=1 https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

# Apps
# ----------------------------

# Install rosetta
softwareupdate --install-rosetta

# Keybase
arch -x86_64 brew install --cask keybase

# Cleanup
# ----------------------------
brew cleanup
