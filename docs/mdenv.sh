#! /bin/bash
MYENV=mdenv
MYENV_DIR=.$MYENV
git clone https://github.com/mmdurrant/env ~/$MYENV_DIR
cat ~/MYENV_DIR/.vimrc | tee -a ~/.vimrc
mv ~/$MYENV_DIR/tmux/ ~
mv ~/tmux/.tmux.conf ~
rm -rf ~/$MYENV_DIR
