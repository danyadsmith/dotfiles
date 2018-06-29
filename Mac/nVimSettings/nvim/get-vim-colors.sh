#!/bin/bash
# INSTALL VIM COLORSCHEMES
# Colorschemes discovered on http://vimcolors.com

SCRIPT_NAME="get-vim-colors.sh"
SCRIPT_AUTHOR="Danya D. Smith"
SCRIPT_UPDATED="Friday, 29 June 2018 at 12:58 AM"

echo "Executing: $SCRIPT_NAME"
echo "By: $SCRIPT_AUTHOR"
echo "Last Updated: $SCRIPT_UPDATED"
echo ""
echo "Changing to Directory ~/.vim/bundle"
cd ~/.vim/bundle

echo "Installing Colorscheme: material.vim"
git clone https://github.com/kaicataldo/material.vim

echo "Installing Colorscheme: plain"
git clone https://github.com/andreypopp/vim-colors-plain

echo "Installing Colorscheme: lucaroix"
git clone https://github.com/miconda/lucariox.vim

echo "Installing Colorscheme: typewriter"
git clone https://github.com/logico-dev/typewriter

echo "Installing Colorscheme: fruchtig"
git clone https://github.com/schickele/vim

echo "Installing Colorscheme: inkstained"
git clone https://github.com/yuttie/inkstained-vim

echo "Installing Colorscheme: stellarized"
git clone https://github.com/nightsense/stellarized

echo "Installing Colorscheme: blame"
git clone https://github.com/hauleth/blame.vim

echo "Installing Colorscheme: simplify"
git clone https://github.com/nightsense/simplifysimplify

echo "Installing Colorscheme: office"
git clone https://github.com/nightsense/office

echo "Installing Colorscheme: moonscape"
git clone https://github.com/Drogglbecher/vim-moonscape

echo "Installing Colorscheme: cobalt2"
git clone https://github.com/GertjanReynaert/cobalt2-vim-theme

echo "Installing Colorscheme: cobalt2"
git clone https://github.com/herrbischoff/cobalt2.vim

echo "Installing Colorscheme: snow"
git clone https://github.com/nightsense/snow

