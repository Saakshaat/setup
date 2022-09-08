#!/bin/bash

echo "###########"
echo "Theming OMZ"
echo "###########"

read -d '' THEMES <<WOWIE
ZSH_THEME_RANDOM_CANDIDATES=(
  "robbyrussell"
  "zhann"
  "clean"
  "sorin"
  "gozilla"
  "arrow"
  "kolo"
)
WOWIE

# append to beginnging of file
echo -e "$THEMES\n$(cat ~/.zshrc)" > ~/.zshrc

# search and replace default theme to random
sed -i '' 's/ZSH_THEME="robbyrussell"/ZSH_THEME="random"/g' ~/.zshrc

# activate theme
source ~/.zshrc
