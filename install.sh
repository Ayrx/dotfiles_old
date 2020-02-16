#!/usr/bin/env bash

CWD=$(pwd)

sudo apt-get update && sudo apt-get -y upgrade
sudo apt-get install -y\
    build-essential\
    cmake\
    gdb\
    python-dev\
    python-pip\
    git\
    libssl-dev\
    libffi-dev\
    wget\
    g++-multilib\
    neovim\
    p7zip-full\
    xz-utils\
    zip\
    openjdk-8-jdk\
    fish\
    tmux\

curl https://sh.rustup.rs -sSf | sh
curl https://pyenv.run | bash
curl -L https://get.oh-my.fish | fish

# Create common directories
mkdir -p $HOME/code

# Move config files into place
mkdir -p $HOME/.config/nvim
ln -sf $CWD/vim/init.vim $HOME/.config/nvim/init.vim
ln -sf $CWD/tmux/.tmux.conf $HOME/.tmux.conf
ln -sf $CWD/git/.gitconfig $HOME/.gitconfig
ln -sf $CWD/git/.gitignore_global $HOME/.gitignore_global
ln -sf $CWD/fish/config.fish $HOME/.config/fish/config.fish
