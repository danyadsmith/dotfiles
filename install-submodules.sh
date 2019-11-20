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

echo "Installing Submodule: base16-vim"
git submodule add https://github.com/chriskempson/base16-vim vim/iOS/.vim/pack/plugins/start/base-16-vim

echo "Installing Submodule: lightline.vim"
git submodule add https://github.com/itchyny/lightline.vim vim/iOS/.vim/pack/plugins/start/lightline.vim

echo "Installing Submodule: vim-pathogen"
git submodule add https://github.com/tpope/vim-pathogen.git vim/iOS/.vim/pack/plugins/start/vim-pathogen

echo "Installing Submodule: ctrlp"
git submodule add https://github.com/ctrlpvim/ctrlp.vim.git vim/iOS/.vim/pack/plugins/start/ctrlp.vim

echo "Installing Submodule: tabular"
git submodule add https://github.com/godlygeek/tabular.git vim/iOS/.vim/pack/plugins/start/tabular

echo "Installing Submodule: vim-coloresque"
git submodule add https://github.com/Marslo/vim-coloresque.git vim/iOS/.vim/pack/plugins/opt/vim-coloresque

echo "Installing Submodule: vim-markdown-enhancements"
git submodule add https://github.com/danyadsmith/vim-markdown-enhancements.git vim/iOS/.vim/pack/plugins/start/vim-markdown-enhancements

echo "Installing Submodule: vim-repeat"
git submodule add https://github.com/tpope/vim-repeat.git vim/iOS/.vim/pack/plugins/start/vim-repeat

echo "Installing Submodule: vim-surround"
git submodule add https://github.com/tpope/vim-surround.git vim/iOS/.vim/pack/plugins/start/vim-surround

echo "Installing Submodule: emmet-vim"
git submodule add https://github.com/mattn/emmet-vim.git vim/iOS/.vim/pack/plugins/start/emmet-vim

echo "Installing Submodule: vimwiki"
git submodule add https://github.com/vimwiki/vimwiki.git vim/iOS/.vim/pack/plugins/start/vimwiki

echo "Installing Submodule: calendar.vim"
git submodule add https://github.com/itchyny/calendar.vim.git vim/iOS/.vim/pack/plugins/start/calendar.vim

echo "Installing Submodule: vim.commentary"
git submodule add https://github.com/tpope/vim-commentary.git vim/iOS/.vim/pack/plugins/start/vim-commentary

echo "Installing Submodule: my-vim-snippets"
git submodule add https://github.com/danyadsmith/my-vim-snippets.git vim/iOS/.vim/pack/plugins/start/my-vim-snippets

echo "Installing Submodule: vim-csharp"
git submodule add https://github.com/OrangeT/vim-csharp.git vim/iOS/.vim/pack/plugins/start/vim-csharp

echo "Installing Submodule: vim-javascript"
git submodule add https://github.com/pangloss/vim-javascript.git vim/iOS/.vim/pack/plugins/start/vim-javascript

echo "Installing Submodule: vim-unimpaired"
git submodule add http://github.com/tpope/vim-unimpaired.git vim/iOS/.vim/pack/plugins/start/vim-unimpaired

echo "Installing Submodule: TagHighlight"
git submodule add https://github.com/vim-scripts/TagHighlight.git vim/iOS/.vim/pack/plugins/start/TagHighlight

echo "Installing Submodule: vim-anotherkolor"
git submodule add https://github.com/danyadsmith/vim-anotherkolor.git vim/iOS/.vim/pack/plugins/start/vim-anotherkolor
