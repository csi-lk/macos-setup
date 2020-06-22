#!/usr/bin/env bash

# firacode font
brew tap homebrew/cask-fonts
brew cask install font-fira-code

# iterm color scheme
curl -# -o ~/scripts/monokai-soda.itermcolors 'https://raw.githubusercontent.com/mbadolato/iTerm2-Color-Schemes/master/schemes/Monokai%20Soda.itermcolors'
open ~/scripts/monokai-soda.itermcolors
