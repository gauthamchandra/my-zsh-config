#!/bin/bash

echo "Starting install..."
echo "Installing Zsh..."
sh -c "$(wget https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"

echo "Installing hub"
brew install hub

echo "Installing thefuck"
brew install thefuck

echo "Symlinking files found in ./config to ~/.zsh-config"
ln -s `pwd`/config ~/.zsh-config
