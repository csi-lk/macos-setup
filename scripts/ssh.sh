#!/usr/bin/env bash

# ssh
ssh-keygen -t rsa -b 4096 -C "github@csi.lk"
eval "$(ssh-agent -s)
touch ~/.ssh/config
echo "Host *" >> ~/.ssh/config
echo "  AddKeysToAgent yes" >> ~/.ssh/config
echo "  UseKeychain yes" >> ~/.ssh/config
echo "  IdentityFile ~/.ssh/id_rsa" >> ~/.ssh/config
ssh-add -K ~/.ssh/id_rsa
