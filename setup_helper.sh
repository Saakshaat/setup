#!/bin/bash

CUR_DIR=$(pwd)

setup_path=$1
if [[ ! -f $setup_path/setup.sh ]] ; then
  echo "$setup_path/setup.sh does not exist. Please ensure the path has a setup script as the entry-point."
  return 1
fi

cd $setup_path
source $setup_path/setup.sh
cd $CUR_DIR
