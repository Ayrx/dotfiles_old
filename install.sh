#!/usr/bin/env bash

CWD=$(pwd)

apt install curl

# Run vim related configs
ln -sf $CWD/vim/.vimrc $HOME/.vimrc
./vim/install_vim_plugins.sh

# Move tmux config file into place
ln -sf $CWD/tmux/.tmux.conf $HOME/.tmux.conf
