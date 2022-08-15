#!/bin/bash

echo "##################"
echo "Adding OMZ Plugins"
echo "##################"

# writing core plugins to omz
cat >> ~/.zshrc <<LMAO
plugins=(
  aws
  colorize
  git
  thefuck
  themes
  urltools
  vi
  web-search
  zsh-interactive-cd
)
LMAO
