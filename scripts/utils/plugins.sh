#!/bin/bash

echo "##################"
echo "Adding OMZ Plugins"
echo "##################"

# writing core plugins to omz
cat >> ~/.zshrc <<EOT
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
EOT
