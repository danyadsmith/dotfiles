#!/bin/sh
# INSTALL DEFAULT PLUGINS and COLORSCHEMES FOR VIM/nVIM

SCRIPT_NAME="get-vim-plugins.sh"
SCRIPT_AUTHOR="Danya D. Smith"
SCRIPT_UPDATED="Friday, 29 June 2018 at 07:04 PM"

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

echo "Installing Plugin: vim-markdown-enhancements"
git clone https://github.com/mattly/vim-markdown-enhancements

echo "Installing Plugin: vim-sensible"
git clone https://github.com/tpope/vim-sensible.git

echo "Installing Colorscheme: material.vim"
git clone https://github.com/kaicataldo/material.vim

echo "Installing Colorscheme: plain"
git clone https://github.com/andreypopp/vim-colors-plain

echo "Installing Colorscheme: lucaroix"
git clone https://github.com/miconda/lucariox.vim

echo "Installing Colorscheme: stellarized"
git clone https://github.com/nightsense/stellarized

echo "Installing Colorscheme: simplify"
git clone https://github.com/nightsense/simplifysimplify

echo "Installing Colorscheme: cobalt2"
git clone https://github.com/herrbischoff/cobalt2.vim

echo "Installing Colorscheme: snow"
git clone https://github.com/nightsense/snow

echo "Installing Colorscheme: gruvbox"
git clone https://github.com/morhetz/gruvbox

echo "Installing Colorscheme: tender"
git clone https://github.com/jacoborus/tender.vim

echo "Installing Colorscheme: xoria256"
git clone https://github.com/vim-scripts/xoria256.vim.git

echo "Finished installing plugins and colorschemes."
