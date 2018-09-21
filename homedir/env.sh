MYENV=mdenv
MYENV_DIR=~/.$MYENV
TMUX_DIR=~/.tmux

function debug_on() {
    set -x
}

function debug_off() {
    set +x
}

function d_exec() {
    debug_on
    $@
    debug_off
}

function update_vimrc() {
    update_homedir .vimrc 
}



function update_git() {
    update_homedir .gitconfig
}

function update_tmux() {
    # if it doesn't exist...
    [[ ! -d $TMUX_DIR ]] && mkdir $TMUX_DIR

    update_homedir .tmux.conf $MYENV_DIR/tmux/
    cp -R $MYENV_DIR/tmux/* $TMUX_DIR
}

function update_all() {
    update_vimrc
    update_tmux
    update_git
}

function update_homedir() {
    FNAME=$1
    SRCFILE=$MYENV_DIR/homedir/$FNAME

    if [ "$2" != "" ]; then
        SRCFILE=$2/$FNAME
    fi

    DSTFILE=~/$FNAME
    cp $SRCFILE $DSTFILE
}
