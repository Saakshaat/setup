#!/bin/bash

echo "####################"
echo "Installing Oh-My-ZSH"
echo "####################"

brew install zsh

# oh-my-zsh
## remove existing omz folder
rm -rf ~/.oh-my-zsh 

# we use the `--unattended` flag
# to prevent omz installer from
# spawning a new shell so `theme.sh`
#can run in the same session
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended
