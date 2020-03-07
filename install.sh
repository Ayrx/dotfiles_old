#!/usr/bin/env bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"

mkdir -p $HOME/.config/nvim
mkdir -p $HOME/.config/fish
ln -sf $DIR/vim/init.vim $HOME/.config/nvim/init.vim
ln -sf $DIR/tmux/.tmux.conf $HOME/.tmux.conf
ln -sf $DIR/git/.gitconfig $HOME/.gitconfig
ln -sf $DIR/git/.gitignore_global $HOME/.gitignore_global
ln -sf $DIR/fish/config.fish $HOME/.config/fish/config.fish
