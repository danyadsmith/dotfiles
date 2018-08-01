#!/bin/sh
# INSTALL DEFAULT PLUGINS and COLORSCHEMES FOR VIM/nVIM

SCRIPT_NAME="get-vim-plugins.sh"
SCRIPT_AUTHOR="Danya D. Smith"
SCRIPT_UPDATED="Saturday 28 July 2018 @ 6:17 PM"

echo "Executing: $SCRIPT_NAME"
echo "By: $SCRIPT_AUTHOR"
echo "Last Updated: $SCRIPT_UPDATED"
echo "========================================================================="
echo ""

echo "Creating Directory: ~/.vim/bundle"
cd ~/.vim/bundle
echo "========================================================================="
echo ""

echo "Cloning Plugins into ~/.vim/bundle"

echo "Installing Plugin: base16-vim"
git clone https://github.com/chriskempson/base16-vim
echo "========================================================================="
echo ""

echo "Installing Plugin: calendar.vim"
git clone https://github.com/itchyny/calendar.vim
echo "========================================================================="
echo ""

echo "Installing Plugin: ctrlp"
git clone https://github.com/kien/ctrlp.vim.git
echo "========================================================================="
echo ""

echo "Installing Plugin: emmet-vim"
git clone https://github.com/mattn/emmet-vim.git
echo "========================================================================="
echo ""

echo "Installing Plugin: lightline"
git clone https://github.com/itchyny/lightline.vim
echo "========================================================================="
echo ""

echo "Installing Plugin: my-vim-snippets"
git clone https://github.com/danyadsmith/my-vim-snippets
echo "========================================================================="
echo ""

echo "Installing Plugin: tabular"
git clone https://github.com/godlygeek/tabular
echo "========================================================================="
echo ""

echo "Installing Plugin: vim-coloresque"
git clone https://github.com/Marslo/vim-coloresque.git
echo "========================================================================="
echo ""

echo "Installing Plugin: vim-commentary"
git clone https://github.com/tpope/vim-commentary
echo "========================================================================="
echo ""

echo "Installing Plugin: vim-fugitive"
git clone https://github.com/tpope/vim-fugitive
echo "========================================================================="
echo ""

echo "Installing Plugin: vim-gitbranch"
git clone https://github.com/itchyny/vim-gitbranch
echo "========================================================================="
echo ""

echo "Installing Plugin: vim-gitgutter"
git clone https://github.com/airblade/vim-gitgutter
echo "========================================================================="
echo ""

echo "Installing Plugin: vim-markdown-enhancements"
git clone https://github.com/mattly/vim-markdown-enhancements
echo "========================================================================="
echo ""

echo "Installing Plugin: vim-marked"
git clone https://github.com/itspriddle/vim-marked.git 
echo "========================================================================="
echo ""

echo "Installing Plugin: vim-minisnip"
git clone https://github.com/joereynolds/vim-minisnip
echo "========================================================================="
echo ""

echo "Installing Plugin: vim-repeat"
git clone https://github.com/tpope/vim-repeat.git
echo "========================================================================="
echo ""

echo "Installing Plugin: vim-surround"
git clone https://github.com/tpope/vim-surround.git
echo "========================================================================="
echo ""

echo "Installing Plugin: vimwiki"
git clone https://github.com/vimwiki/vimwiki
echo "========================================================================="
echo ""

echo "Finished installing plugins and colorschemes."
