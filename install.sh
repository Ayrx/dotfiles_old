#!/usr/bin/env bash

CWD=$(pwd)

# Run vim related configs
ln -sf $CWD/vim/init.vim $HOME/.config/nvim/init.vim

# Move tmux config file into place
ln -sf $CWD/tmux/.tmux.conf $HOME/.tmux.conf
