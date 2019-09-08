#!/usr/bin/env bash

# git
# ----------------------------

# ssh config
pbcopy < ~/.ssh/id_rsa.pub #copy new ssh key to clipboard
open https://github.com/settings/ssh/new

# basic config
git config --global user.name "Callum Silcock"
git config --global user.email "github@csi.lk"
git config --global url.ssh://git@github.com/.insteadOf https://github.com/
git config --global url.ssh://git@bitbucket.org/.insteadOf https://bitbucket.org/
git config --global url.ssh://git@gitlab.com/.insteadOf https://gitlab.com/
git config --global core.editor "code --wait"

# git goodies
curl -fsSL git.io/fpEqU | bash
