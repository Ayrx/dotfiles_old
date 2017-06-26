#!/usr/bin/env bash

# BUNDLE_DIR=$HOME/.vim/bundle
BUNDLE_DIR=$HOME/test/bundle

# List of vim plugins that we want to install.
declare -a plugins=(
    "https://github.com/ctrlpvim/ctrlp.vim.git"
    "https://github.com/davidhalter/jedi-vim.git"
    "https://github.com/rust-lang/rust.vim.git"
    "https://github.com/altercation/vim-colors-solarized.git"
    "https://github.com/tpope/vim-commentary.git"
    "https://github.com/airblade/vim-gitgutter.git"
    "https://github.com/fatih/vim-go.git"
    "https://github.com/Vimjas/vim-python-pep8-indent.git"
)

# Make $BUNDLE_DIR directory if it doesn't exist.
mkdir -p "$BUNDLE_DIR"

# Next, change into $BUNDLE_DIR.
pushd "$BUNDLE_DIR"

# Iterate over list of plguins and git clone them into $BUNDLE_DIR.
for i in "${plugins[@]}"
do
    git clone --recursive "$i"
done

# Exit $BUNDLE_DIR.
popd
