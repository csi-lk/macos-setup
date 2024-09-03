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
git config --global core.editor "code --wait"
git config pull.ff only

# git goodies
curl -fsSL git.io/fpEqU | bash

# gpg
# https://github.com/pstadler/keybase-gpg-github
# ----------------------------

git config --global commit.gpgsign true

keybase pgp export -q 31CD7339EE7FE5AE | gpg --import
keybase pgp export -q 31CD7339EE7FE5AE --secret | gpg --allow-secret-key-import --import
# Need to set a local passphrase
# Can remove this later with https://superuser.com/questions/1360324/gpg-remove-passphrase
gpg --edit-key 31CD7339EE7FE5AE
# Type in 'trust'
