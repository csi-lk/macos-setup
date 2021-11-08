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

git config --global commit.gpgsign true

keybase pgp export -q 31CD7339EE7FE5AE | gpg --import
keybase pgp export -q 31CD7339EE7FE5AE --secret | gpg --allow-secret-key-import --import
gpg --edit-key 31CD7339EE7FE5AE
# Type in 'trust'