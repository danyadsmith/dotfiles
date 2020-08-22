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
" ADD WINDOWS RUNTIME PATH
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set runtimepath+=$HOME/vimfiles
source $VIMRUNTIME/defaults.vim


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" SET ENCODING DEFAULTS
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set encoding=utf-8
set fileencoding=utf-8
set termencoding=utf-8


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

    " Override Visual Mode Highlighted Text Color:
    autocmd ColorScheme * highlight Visual ctermfg=Black guifg=Black
    autocmd ColorScheme * highlight Visual ctermbg=220   guibg=#f9fb8c

    " Override HTML Syntax Colors:
    autocmd ColorScheme * highlight htmlTag guifg=#31aed8
    autocmd ColorScheme * highlight htmlTagName guifg=#31aed8
    autocmd ColorScheme * highlight htmlEndTag guifg=#31a3d8
    autocmd ColorScheme * highlight htmlArg guifg=#90c9d3
    autocmd ColorScheme * highlight htmlString guifg=#fff3b2 " d9d5c1 f5f2c1
    autocmd ColorScheme * highlight htmlSpecialTagName guifg=#31aed8
    autocmd ColorScheme * highlight htmlH1 guifg=#ffaf44

    " Override XML Syntax Colors:
    autocmd ColorScheme * highlight xmlTag guifg=#31aed8
    autocmd ColorScheme * highlight xmlTagName guifg=#31aed8
    autocmd ColorScheme * highlight xmlEndTag guifg=#31aed8

endif


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" WORKSPACE CUSTOMIZATIONS
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set scrolloff=1                         " no. lines to retain above/below cursor


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" CUSTOMIZATIONS FOR PROGRAMMERS
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Syntax Highlighting
syntax enable                           " enable syntax highlighting
filetype on                             " automatically detect file type
filetype plugin on                      " auto load filetype plugins
filetype indent on                      " auto load file indent settings
set redrawtime=20000                    " time allowed to redraw syntax coloring

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
set textwidth=0                         " set wrap width
set wrap                                " word wrap visually
set linebreak                           " only break lines when pressing Enter
set nolist
"set formatoptions+=t                   " auto wrap lines
set formatoptions-=t                    " don't auto wrap lines
set showbreak=└─⯈                       " prefix wrapped lines


" Bracket and Block Customizations
set showmatch                           " Highighlight matching () {} []


" Show Invisible Character Customizations
set listchars=tab:▸\ ,eol:¬,space:∙


" Enable the Matchit Plugin
runtime macros/matchit.vim              " :help matchit


" Create or Update Tags
command! MakeTags !ctags -R .


" Add Additional Match Pairs
set matchpairs+=<:>,«:»


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" CUSTOMIZATIONS FOR WRITERS
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
augroup textobj_quote
  autocmd!
  autocmd FileType markdown call textobj#quote#init()
  autocmd FileType vimwiki call textobj#quote#init()
  autocmd FileType text call textobj#quote#init({'educate': 0})
augroup END

let g:marked_filetypes = ["markdown", "mkd", "ghmarkdown", "vimwiki", "mmd"]

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" SEARCH CUSTOMIZATIONS
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set hlsearch                            " highlight search results
set noincsearch                         " do not highlight incremental search

" Search for visually-selected text
vnoremap // y/<C-r>=escape(@",'/\')<CR><CR>

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" FILE CUSTOMIZATIONS
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set encoding=utf8
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
let g:netrw_banner=0                    " toggle the netrw banner off
let g:netrw_liststyle=3                 " open netwr in tree view
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
  autocmd!
  autocmd BufRead,BufEnter */doc/* wincmd L
augroup end


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" COLOR CONFIGURATIONS
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"let base16colorspace=256

if !has('gui_running')
  set term=xterm
  set t_Co=256
  set termguicolors
  if !empty($CONEMUBUILD)
    set term=xterm
    set t_Co=256
    let &t_AB="\e[48;5;%dm"
    let &t_AF="\e[38;5;%dm"
    set termencoding=utf-8
    set fileencoding=utf-8
    set nocompatible
    inoremap <Char-0x07F> <BS>
    nnoremap <Char-0x07F> <BS>
  endif
endif

if has('termguicolors')
  set termguicolors
endif

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" GUI CONFIGURATIONS
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
if has('gui_running')

  set guifont=PragmataPro-Regular:h16   " set default font on iOS
" set guifont=PragmataPro_Mono:h10      " set default font on computer

  set guioptions-=m                     " remove menu bar
  set guioptions-=T                     " remove toolbar
  set guioptions-=r                     " remove right-hand scroll bar
  set guioptions-=L                     " remove left-hand scroll bar
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
  let g:minisnip_dir = 'c:\Users\dsmith04\vimfiles\bundle\my-vim-snippets\snippets\'
else
  " Set Snippet Locations in *NIX Environments
  let g:minisnip_dir = '~/.vim/pack/plugins/start/my-vim-snippets/snippets/:~/minisnip/'
endif


" Expand Snippet Keyboard Shortcut
let g:minisnip_trigger = '<C-e>'


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


function! SetDarkMode()
  let g:lightline = {
    \ 'colorscheme': 'anotherkolor_dark',
    \ 'active': {
    \   'left': [ [ 'mode', 'paste' ],
    \             [ 'gitbranch', 'readonly', 'filename', 'modified' ] ]
    \ },
    \ 'component_function': {
    \   'gitbranch': 'fugitive#head'
    \ },
		\ 'separator': { 'left': '', 'right': '' },
		\ 'subseparator': { 'left': '', 'right': '' },
		\ 'tabline_separator': { 'left': ' ', 'right': ' ' },
    \ 'tabline_subseparator': { 'left': ' ', 'right': ' ' }
    \ }
  if &rtp =~ 'lightline.vim'
    call lightline#toggle()
    call lightline#toggle()
  endif
  colorscheme anotherkolor-dark
endfunction


function! SetLightMode()
  let g:lightline = {
    \ 'colorscheme': 'anotherkolor_light',
    \ 'active': {
    \   'left': [ [ 'mode', 'paste' ],
    \             [ 'gitbranch', 'readonly', 'filename', 'modified' ] ]
    \ },
    \ 'component_function': {
    \   'gitbranch': 'fugitive#head'
    \ },
		\ 'separator': { 'left': '', 'right': '' },
		\ 'subseparator': { 'left': '', 'right': '' },
		\ 'tabline_separator': { 'left': ' ', 'right': ' ' },
		\ 'tabline_subseparator': { 'left': ' ', 'right': ' ' }
    \ }
  if &rtp =~ 'lightline.vim'
    call lightline#toggle()
    call lightline#toggle()
  endif
  colorscheme anotherkolor-light
endfunction


function! SetNormalModeCursorLineNumber()
  set updatetime=4000
  highlight CursorLineNr ctermfg=Black guifg=Black
  highlight CursorLineNr ctermbg=190 guibg=#31aed8
  highlight Cursor ctermfg=Black guifg=Black
  highlight Cursor ctermbg=190 guibg=#31aed8
endfunction


function! SetInsertModeCursorLineNumber()
  highlight CursorLineNr ctermbg=24 guibg=#31ad38
  highlight CursorLineNr ctermfg=White guifg=White
  if g:colors_name == 'anotherkolor-light'
    highlight Cursor ctermfg=Black guifg=Black
    highlight Cursor ctermbg=24 guibg=#31ad38
  endif
  if g:colors_name == 'anotherkolor-dark'
    highlight Cursor ctermfg=Black guifg=Black
    highlight Cursor ctermbg=White guibg=#ffffff
  endif
  set updatetime=0
endfunction


function! SetReplaceModeCursorLineNumber()
  highlight CursorLineNr ctermbg=160   guibg=#d70000
  highlight CursorLineNr ctermfg=White guifg=White
  highlight Cursor ctermfg=NONE guifg=NONE
  highlight Cursor ctermbg=160 guibg=#d70000
  set updatetime=0
endfunction


function! SetVisualModeCursorLineNumber()
  set updatetime=0
  highlight CursorLineNr ctermfg=Black guifg=Black
  highlight CursorLineNr ctermbg=208   guibg=#f9fb8c
  return ''
endfunction


function! SetEditModeCursorLineNumber(mode)
  if a:mode == 'i'
    call SetInsertModeCursorLineNumber()
  elseif a:mode == 'r'
    call SetReplaceModeCursorLineNumber()
  endif
endfunction


function! SynStack()
  if !exists("*synstack")
    return
  endif
  echo map(synstack(line('.'), col('.')), 'synIDattr(v:val, "name")')
endfunction


function! WordCount()
  let s:old_status = v:statusmsg
  let position = getpos(".")
  exe ":silent normal g\<C-g>"
  let stat = v:statusmsg
  let s:word_count = 0
  if stat != '--No lines in buffer--'
    let s:word_count = str2nr(split(v:statusmsg)[11])
    let v:statusmsg = s:old_status
  end
  call setpos('.', position)
  return s:word_count
endfunction


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

" Visually select the text that was last edited/pasted
nmap gV `[v`]

" Add arrow key mapping to navigate help files
nmap <silent> <RIGHT>        :cnext<CR>
nmap <silent> <RIGHT><RIGHT> :cnfile<CR><C-G>
nmap <silent> <LEFT>         :cprev<CR>
nmap <silent> <LEFT><LEFT>   :cpfile<CR><C-G>


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" LEADER MAPPINGS
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let mapleader = "\<space>"

"    <space>
"    trigger vim-which-key
nnoremap <silent> <leader> :WhichKey '<Space>'<CR>

"    <space>vrc
"    edit .vimrc
nmap <leader>vrc :e $MYVIMRC<cr>

"    <space>so
"    save & source .vimrc (reload settings in current vim session)
nmap <leader>so :w<cr><bar>:source $MYVIMRC<cr><bar>:noh<cr><bar>:echom "sourcing .vimrc"<cr>

"    <space>dm
"    switch to dark mode
nmap <leader>dm :call SetDarkMode()<CR>

"    <space>lm
"    switch to light mode
nmap <leader>lm :call SetLightMode()<CR>

"    <space>tg
"    toggle Goyo - distraction-free writing mode
nmap <leader>tg :Goyo<cr><bar>:noh<cr><bar>:echom ""<cr>

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

"    <space>dc
"    set DrawIt default characters
nmap <leader>dc :call SetDrawIt('│', '─', '┼', '╲', '╱', '╳', '*')<CR>

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

"    <space>tc
"    change line to title case
nmap <leader>tc :call Preserve("s/\\<\\(\\w\\)\\(\\w*\\)\\>/\\u\\1\\L\\2/g")<CR>


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" CUSTOMIZE CURSORS
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let &t_SI = "\<Esc>[6 q"
let &t_SR = "\<Esc>[4 q"
let &t_EI = "\<Esc>[2 q"

vnoremap <silent> <expr> <SID>SetVisualModeCLN SetVisualModeCursorLineNumber()
nnoremap <silent> <script> v v<SID>SetVisualModeCLN <right><left>
nnoremap <silent> <script> V V<SID>SetVisualModeCLN <right><left>
nnoremap <silent> <script> <C-v> <C-v><SID>SetVisualModeCLN

set cursorline

if has('autocmd')
  augroup swapCursorLineColors
    autocmd!
    autocmd InsertEnter * call SetEditModeCursorLineNumber(v:insertmode)
    autocmd InsertLeave * call SetNormalModeCursorLineNumber()
    autocmd CursorHold * call SetNormalModeCursorLineNumber()
  augroup end

  augroup hideCursorLineOnInactiveWindows
    autocmd!
    autocmd VimEnter,WinEnter,BufWinEnter * setlocal cursorline
    autocmd WinLeave * setlocal nocursorline
  augroup end
endif


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" VIM-LIGHTLINE CONFIGURATION
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set noshowmode                          " hide duplicate mode identifier
set laststatus=2                        " configure vim-airline

call SetDarkMode()


