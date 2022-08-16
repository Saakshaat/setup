#!/bin/bash

echo "##################"
echo "Adding OMZ Plugins"
echo "##################"

# pygments for colorize
pip3 install Pygments
# install thefuck
brew install thefuck

# writing core plugins to omz
sed -i '' '/plugins=/d' ~/.zshrc
cat >> ~/.zshrc <<LMAO
plugins=(
  aws
  colorize
  git
  thefuck
  themes
  urltools
  web-search
)
LMAO

cat >> ~/.zshrc << CONFIGS
ZSH_COLORIZE_STYLE="dracula"
CONFIGS
