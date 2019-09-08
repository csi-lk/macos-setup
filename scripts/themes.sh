#!/usr/bin/env bash

# Theming

# iterm color scheme
curl -# -o ~/scripts/monokai-soda.itermcolors 'https://raw.githubusercontent.com/mbadolato/iTerm2-Color-Schemes/master/schemes/Monokai%20Soda.itermcolors'
open ~/scripts/monokai-soda.itermcolors

# Setup Slack Dark
git clone git@github.com:LanikSJ/slack-dark-mode.git ~/scripts/slack-dark-mode
~/scripts/slack-dark-mode/slack-dark-mode.sh