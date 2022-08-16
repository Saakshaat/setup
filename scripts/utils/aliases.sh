#!/bin/bash

echo "##############"
echo "Adding aliases"
echo "##############"

ALIASES_PATH=../../static/aliases
# write contents of static aliases files
for file in $ALIASES_PATH/*; do
  cat $file >> ~/.zshrc
done
