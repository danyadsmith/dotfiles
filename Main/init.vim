" INSTALL PACKAGES via PATHOGEN

execute pathogen#infect()

" CONFIGURE VIM

syntax enable                     " Enable Syntax Highlighting
filetype on                       " Automatically Detect File Type
filetype plugin on                " Auto Load Filetype Plugins
filetype indent on                " Auto Load File Indent Settings
set tabstop=2                     " Number of Visual Spaces Per Tab
set softtabstop=2                 " Number of Spaces in Tab when Editing
set shiftwidth=2                  " Number of Spaces to Indent/Unindent
set expandtab                     " Tabs are Spaces
set number                        " Show Line Numbers
set relativenumber                " Show Relative Line Numbers
set colorcolumn=80                " Show Ruler
set laststatus=2                  " Configure Vim-Airline
set textwidth=80                  " Set Wrap Width
set noshowmode                    " Hide Duplicate Mode Identifier
set hlsearch                      " Highlight search results
set termencoding=utf8             " Set Default Encoding to UTF-8
set clipboard=unnamed             " Yank to OS Clipboard

" OPEN HELP FILES IN VERTICAL PANE

augroup helpfiles
  au!
  au BufRead,BufEnter */doc/* wincmd L
augroup END

" TERMINAL COLOR CONFIGURATION

let base16colorspace=256
set termguicolors
let $NVIM_TUI_ENABLE_TRUE_COLOR=1

if !has('gui_running')
  set t_Co=256
endif

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

" SWAP LINE NUMBER CONFIGURATION BASED ON MODE

augroup numbertoggle
  autocmd!
  autocmd BufEnter,FocusGained,InsertLeave * set relativenumber
  autocmd BufLeave,FocusLost,InsertEnter   * set norelativenumber
augroup END


" SET COLORSCHEME

colorscheme base16-chalk
"colorscheme base16-grayscale-dark
"colorscheme base16-irblack
"colorscheme base16-pop
"colorscheme base16-solarflare


