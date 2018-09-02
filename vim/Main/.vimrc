""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                             ''
"                     \\  //  ||  '||),,(|,  '||''| .|'',
"                      \\//   ||   || || ||   ||    ||
"                  ..   \/   .||. .||    ||. .||.   `|..'
"
"                      vim configuration file (.vimrc)
"
"
"
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" LOAD PLUGINS VIA PATHOGEN
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
if has('ivim')
  runtime bundle/vim-pathogen/autoload/pathogen.vim
endif
execute pathogen#infect()


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" HIGHLIGHT OVERRIDES
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Available Highlight Color Keywords:
" Black, Gray, Grey, LightGray, LightGrey, DarkGray, DarkGrey, White
" Red, LightRed, DarkRed, Yellow, LightYellow, DarkYellow, Brown
" Green, LightGreen, DarkGreen, Cyan, LightCyan, DarkCyan
" Blue, LightBlue, DarkBlue, Magenta, LightMagenta, DarkMagenta

" OVERRIDE HIGHLIGHTS:
if has('autocmd')
  augroup coloroverride
    autocmd!
    " Override Line Number Color:
    autocmd ColorScheme * highlight LineNr ctermfg=White guifg=#444444
    autocmd ColorScheme * highlight LineNr ctermbg=Black guibg=#222222

    " Override Cursor Line Number Color:
    autocmd ColorScheme * highlight CursorLineNr ctermfg=Black guifg=Black
    autocmd ColorScheme * highlight CursorLineNr ctermbg=DarkCyan guibg=#ff75a7

    " Override Invisibles Color:
    autocmd ColorScheme * highlight NonText guifg=#3a3a3a
    autocmd ColorScheme * highlight SpecialKey guifg=#3a3a3a

    " Override Comments Color:
    "autocmd ColorScheme * highlight Comment NONE guifg=#4a4a4a " default

    " Override GitGutter Colors:
    autocmd ColorScheme * highlight SignColumn ctermbg=Black guibg=#222222
    autocmd ColorScheme * highlight GitGutterAdd guifg=#47a628
    autocmd ColorScheme * highlight GitGutterAdd ctermbg=Black guibg=#222222
    autocmd ColorScheme * highlight GitGutterDelete guifg=#ff0000
    autocmd ColorScheme * highlight GitGutterDelete ctermbg=Black guibg=#222222
    autocmd ColorScheme * highlight GitGutterChange guifg=#31ade8
    autocmd ColorScheme * highlight GitGutterChange ctermbg=Black guibg=#222222
    autocmd ColorScheme * highlight GitGutterChangeDelete guifg=#c02b83
    autocmd ColorScheme * highlight GitGutterChangeDelete ctermbg=Black guibg=#222222 

    " Override CriticMarkup Colors:
    autocmd ColorScheme * highlight mdCriticAddition guifg=#47a628

    " Override ColorColumn Color:
    autocmd ColorScheme * highlight ColorColumn ctermbg=Gray guibg=#222222

    " Override HTML Syntax Colors:
    autocmd ColorScheme * highlight htmlTag guifg=#31aed8
    autocmd ColorScheme * highlight htmlTagName guifg=#31aed8
    autocmd ColorScheme * highlight htmlEndTag guifg=#31a3d8
    autocmd ColorScheme * highlight htmlArg guifg=#90c9d3
    autocmd ColorScheme * highlight htmlString guifg=#fff3b2 "d9d5c1 f5f2c1
    autocmd ColorScheme * highlight htmlSpecialTagName guifg=#31aed8
    autocmd ColorScheme * highlight htmlH1 guifg=#ffaf44

    " Override XML Syntax Colors:
    autocmd ColorScheme * highlight xmlTag guifg=#31aed8
    autocmd ColorScheme * highlight xmlTagName guifg=#31aed8
    autocmd ColorScheme * highlight xmlEndTag guifg=#31aed8

endif


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" SET COLORSCHEME
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" COLORSCHEMES WITH BLACK OR DARK GRAY BACKGROUNDS
" ------------------------------------------------
colorscheme anotherkolor-dark
"colorscheme base16-chalk
"colorscheme base16-default-dark
"colorscheme base16-google-dark
"colorscheme base16-grayscale-dark
"colorscheme base16-onedark
"colorscheme base16-tomorrow-night


" COLORSCHEMES WITH BLUE BACKGROUNDS
" ----------------------------------
"colorscheme base16-atelier-cave
"colorscheme base16-atelier-sulphurpool
"colorscheme base16-harmonic-dark
"colorscheme base16-nord
"colorscheme base16-solarflare


" COLORSCHEMES WITH BROWN BACKGROUNDS
" -----------------------------------
"colorscheme base16-darktooth
"colorscheme base16-gruvbox-dark-hard
"colorscheme base16-monokai


" COLORSCHEMES WITH TEAL BACKGROUNDS
" ----------------------------------
"colorscheme base16-materia
"colorscheme base16-solarized-dark


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" CUSTOMIZATIONS FOR PROGRAMMERS
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Syntax Highlighting
syntax enable                           " enable syntax highlighting
filetype on                             " automatically detect file type
filetype plugin on                      " auto load filetype plugins
filetype indent on                      " auto load file indent settings
set redrawtime=5000                     " time allowed to redraw syntax coloring

" Tab vs. Space Customizations
set tabstop=2                           " number of visual spaces per tab
set softtabstop=2                       " number of spaces in tab when editing
set shiftwidth=2                        " number of spaces to indent/unindent
set expandtab                           " tabs are spaces


" Line Number Customizations
set number                              " show line numbers
set relativenumber                      " show relative line numbers
augroup numbertoggle                    " auto toggle line numbers by mode
  autocmd!
  autocmd BufEnter,FocusGained,InsertLeave * set relativenumber
  autocmd BufLeave,FocusLost,InsertEnter   * set norelativenumber
augroup end


" Text Width, Rule & Word Wrap Customizations
set colorcolumn=81                      " show ruler at column 81
set textwidth=80                        " set wrap width
set wrap                                " word wrap visually
set linebreak                           " only break lines when pressing Enter
set nolist
set formatoptions+=t


" Bracket and Block Customizations
set showmatch                           " Highighlight matching () {} []


" Show Invisible Character Customizations
set listchars=tab:▸\ ,eol:¬,space:·


" Enable the Matchit Plugin
runtime macros/matchit.vim              " :help matchit


" Create or Update Tags
command! MakeTags !ctags -R .


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" SEARCH CUSTOMIZATIONS
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set hlsearch                            " highlight search results
set noincsearch                         " do not highlight incremental search


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" FILE CUSTOMIZATIONS
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set termencoding=utf8                   " set default encoding to utf-8

set path+=**

set wildmenu                            " enhanced command-line completion
set wildignore+=*/.DS_Store/*           " ignore MacOS system files/folders
set wildignore+=*\\.DS_Store\\*         " ignore MacOS system files/folders
set wildignore+=*/.suo/*                " ignore Visual Studio files
set wildignore+=*\\.suo\\*              " ignore Visual Studio files
set wildignore+=*/.cache/*                 
set wildignore+=*/.Trash/*              " ignore Trash directories
set wildignore+=*/.npm/*                " ignore NPM
set wildignore+=*/.git/*                " ignore Git
set wildignore+=*/node_modules/*        " ignore node_modules

" Customize the NETRW File Browser
let g:netrw_liststyle=3                 " Open netwr in tree view
autocmd FileType netrw setl bufhidden=wipe


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" MOUSE and TRACKPAD CUSTOMIZATIONS
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set mouse=nicr
map <ScrollWheelUp> <nop>
map <S-ScrollWheelUp> <nop>
map <C-ScrollWheelUp> <nop>
map <ScrollWheelDown> <nop>
map <S-ScrollWheelDown> <nop>
map <C-ScrollWheelDown> <nop>
map <ScrollWheelLeft> <nop>
map <S-ScrollWheelLeft> <nop>
map <C-ScrollWheelLeft> <nop>
map <ScrollWheelRight> <nop>
map <S-ScrollWheelRight> <nop>
map <C-ScrollWheelRight> <nop>   


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" CLIPBOARD CUSTOMIZATIONS
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set clipboard=unnamed                   " yank to os clipboard


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" SPELL CHECK OVERRIDES 
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set spelllang=en_us
if has('nvim')
  autocmd ColorScheme * hi SpellBad cterm=underline guifg=#FB9FB1
  autocmd ColorScheme * hi SpellCap guifg=#70C2EF
  autocmd ColorScheme * hi SpellLocal guifg=#ACC267
  autocmd ColorScheme * hi SpellRare guifg=#DDB26F
endif

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" HELP CUSTOMIZATIONS
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
augroup helpfiles
  au!
  au BufRead,BufEnter */doc/* wincmd L
augroup end


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" COLOR CONFIGURATIONS
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let base16colorspace=256

if !has('gui_running')
  set t_Co=256
  set termguicolors
  set background=dark
endif

if has('termguicolors')
  set termguicolors
endif

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" GUI CONFIGURATIONS
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
if has('gui_running')
  set guifont=PragmataPro:h14
endif


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" NVIM CONFIGURATIONS
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
if has('nvim')
  let $NVIM_TUI_ENABLE_TRUE_COLOR=1
endif


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" CTRL-P CONFIGURATION
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:ctrlp_show_hidden = 1
let g:ctrlp_working_path_mode = 'r'

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" VIM-LIGHTLINE CONFIGURATION
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set noshowmode                          " hide duplicate mode identifier
set laststatus=2                        " configure vim-airline

" Uncomment to Set Middle Status Bar Color to Colorscheme Background
"let s:palette = g:lightline#colorscheme#{g:lightline.colorscheme}#palette
"let s:palette.normal.middle = [ [ 'NONE', 'NONE', 'NONE', 'None' ] ]
"let s:palette.inactive.middle = s:palette.normal.middle
"let s:palette.tabline.middle = s:palette.normal.middle

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


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" VIMWIKI CONFIGURATION
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:vimwiki_list = [{
  \ 'path': '~/vimwiki/',
  \ 'syntax': 'markdown',
  \ 'template_path': '~/vimwiki/templates',
  \ 'template_default': 'default',
  \ 'template_ext': '.tpl',
  \ 'ext': '.md'}]

if has('autocmd')
  autocmd FileType vimwiki set syntax=markdown
endif


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" VIM-MINISNIP CONFIGURATION
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
if has('win32') || has('win64') || has('dos')
  " Set Snippet Locations in Windows Environment
  let g:minisnip_dir = 'c:\Users\dsmith04\.vim\bundle\my-vim-snippets\snippets\'
else
  " Set Snippet Locations in *NIX Environments
  let g:minisnip_dir = '~/.vim/bundle/my-vim-snippets/snippets/:~/minisnip/'
endif

let g:minisnip_trigger = "<C-j>"

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" CUSTOMIZE CURSORS
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let &t_SI = "\<esc>[6 q"
let &t_SR = "\<esc>[4 q"
let &t_EI = "\<esc>[2 q"


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" FUNCTIONS
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
function! Preserve(command)
  " Preparation: save last search, and cursor position.
  let _s=@/
  let l = line(".")
  let c = col(".")
  " Do the business:
  execute a:command
  " Clean up: restore previous search history, and cursor position
  let @/=_s
  call cursor(l, c)
endfunction

function! SynStack()
  if !exists("*synstack")
    return
  endif
  echo map(synstack(line('.'), col('.')), 'synIDattr(v:val, "name")')
endfunc


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" CUSTOM KEY MAPPINGS
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Allow Use of <Command> + j k $ and 0 to navigate wrapped lines
vmap <D-j> gj
vmap <D-k> gk
vmap <D-4> g$
vmap <D-6> g^
vmap <D-0> g0
nmap <D-j> gj
nmap <D-k> gk
nmap <D-4> g$
nmap <D-6> g^
nmap <D-0> g0

" Use the Tab key to navigate between tabs
nmap <Tab> gt
nmap <A-Tab> gT

" Change the working directory to the current file directory
cnoremap %% <C-R>=fnameescape(expand('%:h')).'/'<cr>

" Visually selec the text that was last edited/pasted
nmap gV `[v`]


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" LEADER MAPPINGS
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let mapleader = "\<space>"

"    <space>vrc
"    edit .vimrc
nmap <leader>vrc :e $MYVIMRC<cr>

"    <space>so
"    save & source .vimrc (reload settings in current vim session)
nmap <leader>so :w<cr><bar>:source $MYVIMRC<cr><bar>:noh<cr><bar>:echom "sourcing .vimrc"<cr>

"    <space>sp
"    spell check on
nmap <leader>sp :setlocal spell<cr>

"    <space>ns
"    spell check off (no spelling)
nmap <leader>ns :setlocal nospell<cr>

"    <space>pw
"    jump to previous misspelled word
nmap <leader>pw [s

"    <space>pn
"    jump to next misspelled word
nmap <leader>nw ]s

"    <space>cs
"    correct spelling
nmap <leader>cs 1z=

"    <space>wc
"    display word count
nmap <leader>wc g<C-g>

"    <space>si
"    show invisible characters
nmap <leader>si :set list!<cr>

"    <space>ac
"    center text on line (align center)
nmap <leader>ac :center<cr>

"    <space>al
"    shift text left on line (align left)
nmap <leader>al :left<cr>

"    <space>ar
"    shift text right on line (align right)
nmap <leader>ar :right<cr>

"    <space>cp
"    ctrl-p
nmap <leader>cp :CtrlP<cr>

"    <space>cc
"    ctrl-p clear cache
nmap <leader>cc :CtrlPClearCache<cr>

"    <space>ct
"    ctrl-p search tags
nmap <leader>. :CtrlPTag<cr>

"    <space>$
"    remove trailing whitespace from end of lines
nmap <leader>$ :call Preserve("%s/\\s\\+$//e")<CR>

"    <space>=
"    reindent file
nmap <leader>= :call Preserve("normal gg=G")<CR>

"    <space>ew
"    Edit in new window
map  <leader>ew :e %%

"    <space>es
"    Edit in new horizontal split
map  <leader>es :sp %%

"    <space>ev
"    Edit in new vertical split
map  <leader>ev :vsp %%

"    <space>et
"    Edit in new tab
map  <leader>et :tabe %%

"    <space>ss
"    Show highlighting groups for the word beneath the cursor
nmap <leader>ss :call SynStack()<CR>
