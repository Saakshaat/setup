#!/bin/bash

echo "###############"
echo "Configuring Vim"
echo "###############"

CONFIGS_PATH=../../static/vim
for file in $CONFIGS_PATH/*; do
	cat $file >> ~/.vimrc
done
