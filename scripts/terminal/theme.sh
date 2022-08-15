#!/bin/bash

echo "#############"
echo "Theming iTerm"
echo "#############"

THEMES_PATH=../../static/themes/
CUR_PATH=$(pwd)

# open iTerm themes
open $THEMES_PATH/*

#get list of themes to pass to theme script
cd $THEMES_PATH

## get '\n' separated string with preset names
presets=$(for i in *; do echo "${i%.itermcolors}"; done)
cd $CUR_PATH

## pass preset names to set_theme.py
python3 set_theme.py $(echo $presets)
