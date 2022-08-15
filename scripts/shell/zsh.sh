#!/bin/bash

echo "####################"
echo "Installing Oh-My-ZSH"
echo "####################"

brew install zsh

# oh-my-zsh
## remove existing omz folder
rm -rf ~/.oh-my-zsh 

# we use the NO_INTERACTIVE flag
# to prevent omz installer from
# changing the shell to zsh after
# install so `theme.sh` can run in
# the same session
NO_INTERACTIVE=true sh -c "$(curl -fsSL https://raw.githubusercontent.com/subtlepseudonym/oh-my-zsh/feature/install-noninteractive/tools/install.sh)"
