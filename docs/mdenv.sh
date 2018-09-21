#!/bin/bash
MYENV=mdenv
MYENV_DIR=~/.$MYENV

[[ -d $MYENV_DIR ]] && rm -rf $MYENV_DIR
git clone https://github.com/mmdurrant/env $MYENV_DIR
source $MYENV_DIR/homedir/env.sh

update_all

