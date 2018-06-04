" PLUG PACKAGE MANAGER SETUP

if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.vim/bundle')
  Plug 'junegunn/vim-plug'
call plug#end()

" Install Packages

call plug#begin('~/.vim/bundle')

  " Color Schemes
  Plug 'nightsense/vim-crunchbang'
  Plug 'nightsense/seabird'
  Plug 'chriskempson/base16-vim'

  " Text Editing and Expansion 
  Plug 'mattn/emmet-vim'
  Plug 'tpope/vim-surround'

  " Git
  Plug 'airblade/vim-gitgutter'
  Plug 'tpope/vim-fugitive'
  Plug 'itchyny/vim-gitbranch'

  " UI Enhancements
  Plug 'itchyny/lightline.vim'
  Plug 'majutsushi/tagbar'

call plug#end()

" CONFIGURE VIM

set termguicolors
syntax enable                     " Enable Syntax Highlighting
set tabstop=2                     " Number of Visual Spaces Per Tab
set softtabstop=2                 " Number of Spaces in Tab when Editing
set shiftwidth=2
set expandtab                     " Tabs are Spaces
set number                        " Show Line Numbers
set relativenumber                " Show Relative Line Numbers
set colorcolumn=70                " Show Ruler
set laststatus=2                  " Configure Vim-Airline
set textwidth=70                  " Set Wrap Width
set noshowmode                    " Hide Duplicate Mode Identifier
set clipboard=unnamedplus         " Copy to system clipboard

let $NVIM_TUI_ENABLE_TRUE_COLOR=1

" VIM-LIGHTLINE CONFIGURATION

let g:lightline = {
  \ 'colorscheme': 'powerline',
  \ 'active': {
  \   'left': [ [ 'mode', 'paste' ],
  \             [ 'gitbranch', 'readonly', 'filename', 'modified' ] ]
  \ },
  \ 'component_function': {
  \   'gitbranch': 'fugitive#head'
  \ },
  \ }

if !has('gui_running')
  set t_Co=256
endif

" BASE-16 COLORSCHEME CONFIGURATION

let base16colorspace=256

" SET COLORSCHEME

" Dark Colorschemes

"colorscheme base16-bright
colorscheme base16-chalk
"colorscheme base16-grayscale-dark
"colorscheme base16-irblack
"colorscheme crunchbang
"colorscheme petrel
"colorscheme base16-pop
"colorscheme base16-solarflare
"colorscheme stormpetrel

" Light Colorschemes

"colorscheme greygull
"colorscheme seagull
