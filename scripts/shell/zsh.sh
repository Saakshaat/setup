#!/bin/bash

echo "####################"
echo "Installing Oh-My-ZSH"
echo "####################"

brew install zsh

# oh-my-zsh
`ZSH=~/oh-my-zsh sh install.sh`
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

