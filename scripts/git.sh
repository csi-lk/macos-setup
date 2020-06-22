#!/usr/bin/env bash

# ssh
# ----------------------------

# ssh config
pbcopy < ~/.ssh/id_rsa.pub #copy new ssh key to clipboard
open https://github.com/settings/ssh/new

# git
# ----------------------------

# basic config
git config --global user.name "Callum Silcock"
git config --global user.email "github@csi.lk"
git config --global url.ssh://git@github.com/.insteadOf https://github.com/
git config --global url.ssh://git@bitbucket.org/.insteadOf https://bitbucket.org/
git config --global url.ssh://git@gitlab.com/.insteadOf https://gitlab.com/
git config --global core.editor "code --wait"

# git goodies
curl -fsSL git.io/fpEqU | bash

# gpg
# https://github.com/pstadler/keybase-gpg-github
# ----------------------------

keybase pgp gen --multi
gpg --list-secret-keys --keyid-format LONG

# needs characters after the 4096R eg.
# sec   4096R/E870EE00 2016-04-06 [expires: 2032-04-02]
git config --global user.signingkey E870EE00

git config --global commit.gpgsign true
open https://github.com/settings/keys

open https://github.com/settings/keys
# Click "New GPG key"
keybase pgp export -q CB86A866E870EE00 | pbcopy