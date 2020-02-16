#!/usr/bin/env bash

CWD=$(pwd)

# Run vim related configs
mkdir -p $HOME/.config/nvim
ln -sf $CWD/vim/init.vim $HOME/.config/nvim/init.vim

# Move tmux config file into place
ln -sf $CWD/tmux/.tmux.conf $HOME/.tmux.conf

# Move .gitconfig config file into place
ln -sf $CWD/git/.gitconfig $HOME/.gitconfig
ln -sf $CWD/git/.gitignore_global $HOME/.gitignore_global

# Move fish shell config file into place
ln -sf $CWD/fish/config.fish $HOME/.config/fish/config.fish
