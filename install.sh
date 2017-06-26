#!/usr/bin/env bash

CWD=$(pwd)

# Run vim related configs
ln -sf $CWD/vim/.vimrc $HOME/.vimrc
./vim/install_vim_plugins.sh
