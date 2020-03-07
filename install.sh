#!/usr/bin/env bash

CWD=$(pwd)

mkdir -p $HOME/.config/nvim
mkdir -p $HOME/.config/fish
ln -sf $CWD/vim/init.vim $HOME/.config/nvim/init.vim
ln -sf $CWD/tmux/.tmux.conf $HOME/.tmux.conf
ln -sf $CWD/git/.gitconfig $HOME/.gitconfig
ln -sf $CWD/git/.gitignore_global $HOME/.gitignore_global
ln -sf $CWD/fish/config.fish $HOME/.config/fish/config.fish
