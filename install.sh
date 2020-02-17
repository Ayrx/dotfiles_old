#!/usr/bin/env bash

CWD=$(pwd)

sudo apt-get update && sudo apt-get -y upgrade
sudo add-apt-repository ppa:neovim-ppa/stable
sudo apt-get update
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
    curl\
    zlib1g-dev\
    libbz2-dev\
    libreadline-dev\
    libsqlite3-dev\
    llvm\
    libncurses5-dev\
    libncursesw5-dev\
    tk-dev\
    liblzma-dev
    python-openssl\
    fortune\

curl https://sh.rustup.rs -sSf | sh
curl https://pyenv.run | bash

# Create common directories
mkdir -p $HOME/code

# Move config files into place
mkdir -p $HOME/.config/nvim
mkdir -p $HOME/.config/fish
ln -sf $CWD/vim/init.vim $HOME/.config/nvim/init.vim
ln -sf $CWD/tmux/.tmux.conf $HOME/.tmux.conf
ln -sf $CWD/git/.gitconfig $HOME/.gitconfig
ln -sf $CWD/git/.gitignore_global $HOME/.gitignore_global
ln -sf $CWD/fish/config.fish $HOME/.config/fish/config.fish

$HOME/.pyenv/bin/pyenv install 3.8.1
$HOME/.pyenv/bin/pyenv virtualenv 3.8.1 neovim3
$HOME/.pyenv/versions/neovim3/bin/pip install neovim pynvim
nvim +'PlugInstall --sync' +qall &> /dev/null

sudo chsh -s `which fish` $USER
curl -L https://get.oh-my.fish | fish
