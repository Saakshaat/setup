#!/bin/bash

source plugins.sh
source aliases.sh

echo "source $ZSH/oh-my-zsh.sh" > ~/.zshrc
# activating plugins and aliases
source ~/.zshrc

