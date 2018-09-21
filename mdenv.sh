#!/bin/bash
MYENV=mdenv
MYENV_DIR=~/.$MYENV

[[ -d $MYENV_DIR ]] && rm -rf $MYENV_DIR
git clone https://github.com/mmdurrant/env $MYENV_DIR
[[ -s $MYENV_DIR/homedir/env.sh ]] && source $MYENV_DIR/homedir/env.sh
set -x
update_all
set +x
