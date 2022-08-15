#!/bin/bash

THEMES_PATH=../../static/themes/
CUR_PATH=$(pwd)

# open iTerm themes
open $THEMES_PATH/*

#get list of themes to pass to theme script
cd $THEMES_PATH

## get '\n' separated string with preset names
presets=$(for i in *; do echo "${i%.itermcolors}"; done)
echo "presets-$presets"
cd $CUR_PATH
