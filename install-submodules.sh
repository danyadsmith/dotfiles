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


echo "Installing Submodule: lightline.vim"
git submodule add https://github.com/danyadsmith/lightline.vim vim/iOS/.vim/pack/plugins/start/lightline.vim

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

echo "Installing Submodule: DrawIt"
git submodule add https://github.com/vim-scripts/DrawIt.git vim/iOS/.vim/pack/plugins/start/DrawIt

echo "Installing Submodule: typescript-vim"
git submodule add https://github.com/leafgarland/typescript-vim.git vim/iOS/.vim/pack/plugins/start/typescript-vim

echo "Installing Submodule: vim-HiLinkTrace"
git submodule add https://github.com/gerw/vim-HiLinkTrace.git vim/iOS/.vim/pack/plugins/start/vim-HiLinkTrace

echo "Installing Submodule: vim-js-pretty-template"
git submodule add	https://github.com/Quramy/vim-js-pretty-template vim/iOS/.vim/pack/plugins/start/vim-js-pretty-template

echo "Installing Submodule: vim-json"
git submodule add	https://github.com/elzr/vim-json.git vim/iOS/.vim/pack/plugins/start/vim-json

echo "Installing Submodule: vim-minisnip"
git submodule add https://github.com/joereynolds/vim-minisnip.git vim/iOS/.vim/pack/plugins/start/vim-minisnip

echo "Installing Submodule: unicycle"
git submodule add https://github.com/vim-scripts/UniCycle vim/iOS/.vim/pack/plugins/start/unicycle

echo "Installing Submodule: vim-textobj-user"
git submodule add https://github.com/kana/vim-textobj-user.git vim/iOS/.vim/pack/plugins/start/vim-textobj-user

echo "Installing Submodule: vim-textobj-quote"
git submodule add https://github.com/reedes/vim-textobj-quote.git vim/iOS/.vim/pack/plugins/start/vim-textobj-quote


