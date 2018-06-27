#!/bin/sh
# INSTALL DEFAULT PLUGINS FOR VIM/nVIM

SCRIPT_NAME="get-vim-plugins.sh"
SCRIPT_AUTHOR="Danya D. Smith"
SCRIPT_UPDATED="Tuesday, 26 June 2018 at 10:14 PM"

echo "Executing: $SCRIPT_NAME"
echo "By: $SCRIPT_AUTHOR"
echo "Last Updated: $SCRIPT_UPDATED"

echo "Creating Directory: ~/.vim/bundle"
cd ~/.vim/bundle

echo "Cloning Plugins into ~/.vim/bundle"

echo "Installing Plugin: base16-vim"
git clone https://github.com/chriskempson/base16-vim

echo "Installing Plugin: vim-fugitive"
git clone https://github.com/tpope/vim-fugitive

echo "Installing Plugin: vim-gitbranch"
git clone https://github.com/itchyny/vim-gitbranch

echo "Installing Plugin: vim-gitgutter"
git clone https://github.com/airblade/vim-gitgutter

echo "Installing Plugin: lightline"
git clone https://github.com/itchyny/lightline.vim

echo "Installing Plugin: vim-sensible"
git clone https://github.com/tpope/vim-sensible.git

echo "Finished installing plugins."