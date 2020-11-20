#!/usr/bin/env bash

source ./lib/continue.sh

# Create default files and directories
echo "Creating folders..."

mkdir ~/hole
mkdir ~/scripts

echo "Setting up bash profile..."
cp ./config/.bash_profile ~/.bash_profile;
source ~/.bash_profile;

echo "Setting up bashrc..."
cp ./config/.bashrc ~/.bashrc;

echo "Moving to setup files..."

# Setup SSH
# ----------------------------

if [[ "yes" == $(continue "Setup SSH?") ]]
then
    . ./scripts/ssh.sh
fi

# Setup Brew
# ----------------------------

if [[ "yes" == $(continue "Setup Brew?") ]]
then
    . ./scripts/brew.sh
fi

# Setup Git
# ----------------------------

if [[ "yes" == $(continue "Setup Git?") ]]
then
    . ./scripts/git.sh
fi


# Setup Mac
# ----------------------------

if [[ "yes" == $(continue "Setup MacOS Config?") ]]
then
    . ./scripts/mac.sh
fi

# Setup Themes
# ----------------------------

if [[ "yes" == $(continue "Setup themes?") ]]
then
    . ./scripts/themes.sh
fi