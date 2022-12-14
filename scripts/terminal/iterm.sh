#!/bin/bash

echo "#######################"
echo "Setting Up Iterm and Co"
echo "#######################"

# install iTerm
brew install iterm2 --cask

# shell integration
curl -L https://iterm2.com/shell_integration/zsh \
-o ~/.iterm2_shell_integration.zsh

# install iTerm python API
pip3 install iterm2 --user

# open iterm session for other scripts
open /Applications/iTerm.app
