#!/bin/bash

cat setup_helper.sh > /tmp/setup_collections.sh

CUR_DIR=$(pwd)
source /tmp/setup_collections.sh $CUR_DIR/scripts
