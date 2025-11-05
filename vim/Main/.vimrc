""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"
"                             ''
"                     \\  //  ||  '||),,(|,  '||''| .|'',
"                      \\//   ||   || || ||   ||    ||
"                  ..   \/   .||. .||    ||. .||.   `|..'
"
"                      vim configuration file (.vimrc)
"
"
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" SET ENVIRONMENT VARIABlES
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let $MYVIMRC = expand('~/.vimrc')

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" SET VIM MODE
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"let g:vim_mode = 'default'
 let g:vim_mode = 'desktop'
"let g:vim_mode = 'continuity'
"let g:vim_mode = 'writing'


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
    autocmd ColorScheme * highlight htmlH1 guifg=#ffffff cterm=bold term=bold gui=bold

    " Override XML Syntax Colors:
    autocmd ColorScheme * highlight xmlTag guifg=#31aed8
    autocmd ColorScheme * highlight xmlTagName guifg=#31aed8
    autocmd ColorScheme * highlight xmlEndTag guifg=#31aed8
     
endif


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" WORKSPACE CUSTOMIZATIONS
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set scrolloff=1                         " no. lines to retain above/below cursor

let g:coloresque_filetypes = ['css', 'scss', 'sass', 'less', 'vim', 'javascript']

" load coloresque for specific filetypes
autocmd FileType css,scss,sass,less,vim,javascript packadd vim-coloresque


" Disable coloresque for specific filetypes where you don't want it
autocmd FileType markdown let b:coloresque_disabled = 1
autocmd FileType html let b:coloresque_disabled = 1
autocmd FileType vimwiki let b:coloresque_disabled = 1

" Line Number Customization
set number                              " show line numbers
set relativenumber                      " show relative line numbers
augroup numbertoggle                    " auto toggle line numbers by mode
  autocmd!
  autocmd BufEnter,FocusGained,InsertLeave * set relativenumber
  autocmd BufLeave,FocusLost,InsertEnter   * set norelativenumber
augroup end

" Text Width, Rule & Word Wrap Customizations
set colorcolumn=81                      " show ruler at column 81
set columns=80
set textwidth=0                         " set wrap width
set wrap                                " word wrap visually
set nolinebreak                         " only break lines when pressing Enter
set nolist
set formatoptions-=t                    " auto wrap lines
set showbreak=└─⯈                       " prefix wrapped lines

" Goyo custmizations

let g:goyo_width = 87                   " set width to 85 columns


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" CUSTOMIZATIONS FOR PROGRAMMERS
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Syntax Highlighting
syntax enable                           " enable syntax highlighting
filetype on                             " automatically detect file type
filetype plugin on                      " auto load filetype plugins
filetype indent on                      " auto load file indent settings
set redrawtime=90000                    " time allowed to redraw syntax coloring

" Tab vs. Space Customizations
set tabstop=2                           " number of visual spaces per tab
set softtabstop=2                       " number of spaces in tab when editing
set shiftwidth=2                        " number of spaces to indent/unindent
set expandtab                           " tabs are spaces


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
let g:textobj#quote#pairs = ['"\"', "''", '“”', '‘’']

augroup textobj_quote
  autocmd!
  autocmd FileType markdown,vimwiki call textobj#quote#init({'educate': 1})
  autocmd FileType text call textobj#quote#init({'educate': 0})
augroup END

augroup unicycle
  autocmd!
  autocmd FileType markdown,text,mkd,ghmarkdown,vimwiki,md,mmd UniCycleOn
augroup END

let g:marked_filetypes = ["markdown", "mkd", "ghmarkdown", "vimwiki", "md",  "mmd"]

" clean markdown table
command! CleanMD call CleanMarkdownTable()

" vim-surround customizations for Markdown
let g:surround_42 = "**\r**"    " 42 is ASCII for '*'
let g:surround_95 = "_\r_"      " 95 is ASCII for '_' 
let g:surround_96 = "`\r`"      " 96 is ASCII for '`'


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" SPLIT CUSTOMIZATIONS
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Easier split navigation
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l 

set splitright

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" SEARCH CUSTOMIZATIONS
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set hlsearch                            " highlight search results with yellow highlights
set noincsearch                         " do not highlight incremental search
set shortmess-=S                        " Show search position and count in the status line (accurate up to 99 results)

" Search for visually-selected text
vnoremap // y/<C-r>=escape(@",'/\')<CR><CR>

nnoremap <silent> n   n:call HLNext(0.4)<cr>
nnoremap <silent> N   N:call HLNext(0.4)<cr>

 
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" FILE CUSTOMIZATIONS
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set encoding=utf8
set termencoding=utf8                   " set default encoding to utf-8
set backupcopy=yes                      " preserve created date and time

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
xnoremap p pgvy                         " do not overwrite the clipboard 

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" SPELL CHECK OVERRIDES
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set spelllang=en_us
set spellfile=~/.vim/spell/en.utf-8.add

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
    if has('ios')
  			set guifont=PragmataPro\ Mono\ Liga:h16   " set default font on iOS
    elseif has('gui_macvim')
      if g:vim_mode == 'default'
  		  set guifont=PragmataPro\ Liga:h18         " set default font on computer
      endif
      if g:vim_mode == 'desktop'
  		  set guifont=PragmataPro\ Liga:h28         " set default font on computer
      endif
      if g:vim_mode == 'continuity'
  		  set guifont=PragmataPro\ Liga:h20         " set smaller font on computer
      endif
      if g:vim_mode == 'writing'
  		  set guifont=Pitch:h18                     " set writing font on computer
      endif
    else
      " Other GUI Vim (rare on macOS)
    endif
else
    " terminal Vim (on macOS, no GUI)
    " leave guifont unset
endif

if has('gui_running')
  set guioptions-=m                           " remove menu bar
  set guioptions-=T                           " remove toolbar
  set guioptions-=r                           " remove right-hand scroll bar
  set guioptions-=L                           " remove left-hand scroll bar
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
" FZF CONFIGURATION
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:fzf_colors =
\ { 'fg':      ['fg', 'DoveFg'],
  \ 'bg':      ['bg', 'Normal'],
  \ 'hl':      ['fg', 'GreenFg'],
  \ 'fg+':     ['fg', 'CursorLine', 'CursorColumn', 'Normal'],
  \ 'bg+':     ['bg', 'CursorLine', 'CursorColumn'],
  \ 'hl+':     ['fg', 'Statement'],
  \ 'info':    ['fg', 'PreProc'],
  \ 'border':  ['fg', 'Ignore'],
  \ 'prompt':  ['fg', 'Conditional'],
  \ 'pointer': ['fg', 'OrangeFg'],
  \ 'marker':  ['fg', 'ChartreuseFg'],
  \ 'spinner': ['fg', 'ChartreuseFg'],
  \ 'header':  ['fg', 'Comment'] }


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" VIMWIKI CONFIGURATION
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:vimwiki_list = [{
  \ 'path': '~/vimwiki/',
  \ 'syntax': 'markdown',
  \ 'template_path': '~/vimwiki/templates',
  \ 'template_default': 'default',
  \ 'template_ext': '.tpl',
  \ 'diary_rel_path': 'diary/',
  \ 'diary_index': 'diary',
  \ 'auto_diary_index': 1,
  \ 'ext': '.md'}]

if has('autocmd')
  autocmd FileType vimwiki setlocal foldlevel=99
  autocmd FileType vimwiki setlocal textwidth=80 formatoptions-=l
  autocmd FileType vimwiki setlocal concealcursor=""
  autocmd FileType vimwiki setlocal conceallevel=2
endif

command! SearchVimwikiFiles call fzf#run(fzf#wrap({
  \ 'source': 'find ' . g:vimwiki_list[0].path . ' -name "*.md" -type f',
  \ 'sink': function('InsertVimwikiLinkWithPath')
  \ }))

command! SearchVimwikiFilesFilenameOnly call fzf#run(fzf#wrap({
  \ 'source': 'find ' . g:vimwiki_list[0].path . ' -name "*.md" -type f',
  \ 'sink': function('InsertVimwikiLinkFilenameOnly')
  \ }))

autocmd FileType vimwiki syntax match VimwikiPreDelim /```/ conceal

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
" COMMANDS
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Enable coloresque
command! EnableColoresque call coloresque#init()

" Show the syntax ID of the text under the cursor
command! SynID echo 'hi<' . synIDattr(synID(line('.'), col('.'), 1), 'name') . '> trans<' . synIDattr(synIDtrans(synID(line('.'), col('.'), 1)), 'name') . '> lo<' . synIDattr(synIDtrans(synID(line('.'), col('.'), 1)), 'name') . '>'

" Define the :TestColor command
command! -nargs=* TestColor call TestColor(<f-args>)


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" FUNCTIONS
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

function! CleanMarkdownTable()
  " Remove padding added by VimWiki
  :%s/  \+/ /g  
endfunction


function! CountSearchMatches() abort
  if empty(@/)
    echo "No active search pattern. Please search first (/pattern)"
    return
  endif

  " Save cursor and shortmess
  let l:save_cursor = getpos(".")
  let l:save_shortmess = &shortmess
  set shortmess+=S

  let l:pattern = @/
  let l:count = 0
  let l:current = 0

  " Start at top of file
  normal! gg
  while search(l:pattern, 'W') > 0
    let l:count += 1
    " If the current match is before or at the original cursor
    if getpos('.')[1] < l:save_cursor[1] || (getpos('.')[1] == l:save_cursor[1] && getpos('.')[2] <= l:save_cursor[2])
      let l:current = l:count
    endif
  endwhile

  " Restore shortmess and cursor
  let &shortmess = l:save_shortmess
  call setpos('.', l:save_cursor)

  if l:count > 0
    if l:current == 0
      let l:current = l:count
    endif
    echo "Matches for '" . l:pattern . "': " . l:count . " (Viewing " . l:current . "/" . l:count . ")"
  else
    echo "No matches found."
  endif
endfunction

function! InsertVimwikiLinkFilenameOnly(file)
  let filename = fnamemodify(a:file, ':t:r')
  execute "normal! a[[" . filename . "]]"
endfunction


function! InsertVimwikiLinkWithPath(file)
  try
    echo "File received: " . a:file
    
    " Hardcode the wiki path to eliminate config issues
    let wiki_root = expand('~/vimwiki/')
    echo "Using wiki root: " . wiki_root
    
    " Simple path manipulation
    let relative_path = substitute(a:file, wiki_root, '', '')
    
    echo "Relative path: " . relative_path
    
    let title = fnamemodify(a:file, ':t:r')
    echo "Title: " . title
    
    " Insert the link
    execute "normal! a[" . title . "](../" . relative_path . ")"
    echo "Link inserted successfully!"
    
  catch
    echo "ERROR CAUGHT: " . v:exception
    echo "Error occurred at line: " . v:throwpoint
  endtry
endfunction


function! SearchMatchStatusline() abort
  if empty(@/)
    return ''
  endif

  " If searchcount() exists, use it
  if exists('*searchcount')
    let l:sc = searchcount({'timeout': 50})
    if l:sc.total > 0
      " If we want (current/total) display:
      if l:sc.current == l:sc.total
        return printf('Last (%d/%d)', l:sc.current, l:sc.total)
      else
        return printf('(%d/%d)', l:sc.current, l:sc.total)
      endif
    else
      return ''
    endif
  endif

  " Otherwise, fallback to manual safe counting
  let l:pattern = @/
  let l:view = winsaveview()
  let l:count = 0
  let l:lnum = 1

  while l:lnum <= line('$')
    let l:line = getline(l:lnum)
    let l:startcol = 0
    while 1
      let l:matchcol = match(l:line, l:pattern, l:startcol)
      if l:matchcol == -1
        break
      endif
      let l:count += 1
      let l:startcol = l:matchcol + 1
    endwhile
    let l:lnum += 1
  endwhile

  call winrestview(l:view)

  if l:count > 0
    return printf('Matches: %d', l:count)
  else
    return ''
  endif
endfunction


function! HLNext (blinktime)
  set invcursorline
  redraw
  exec 'sleep ' . float2nr(a:blinktime * 1000) . 'm'
  set invcursorline
  redraw
endfunction


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
  if has('ios') || g:vim_mode == 'writing'
    " iVim: fallback to simple ASCII separators
    let l:left_sep  = ''
    let l:right_sep = ''
    let l:left_sub  = '|'
    let l:right_sub = '|'
  else
    " MacVim or other GUI: use Powerline glyphs
    let l:left_sep  = ''
    let l:right_sep = ''
    let l:left_sub  = ''
    let l:right_sub = ''
  endif

  let g:lightline = {
    \ 'colorscheme': 'anotherkolor_dark',
    \ 'active': {
    \   'left': [ [ 'mode', 'paste' ],
    \             [ 'gitbranch', 'readonly', 'filename', 'modified' ],
    \             [ 'searchmatch'] ],
    \ },
    \ 'component_function': {
    \   'gitbranch': 'fugitive#head',
    \   'searchmatch': 'SearchMatchStatusline'
    \ },
    \ 'separator': { 'left': l:left_sep, 'right': l:right_sep },
    \ 'subseparator': { 'left': l:left_sub, 'right': l:right_sub },
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
  if has('ios')
    " iVim: fallback to simple ASCII separators
    let l:left_sep  = ''
    let l:right_sep = ''
    let l:left_sub  = '|'
    let l:right_sub = '|'
  else
    " MacVim or other GUI: use Powerline glyphs
    let l:left_sep  = ''
    let l:right_sep = ''
    let l:left_sub  = ''
    let l:right_sub = ''
  endif

  let g:lightline = {
    \ 'colorscheme': 'anotherkolor_light',

    \ 'active': {
    \   'left': [ [ 'mode', 'paste' ],
    \             [ 'gitbranch', 'readonly', 'filename', 'modified' ],
    \             [ 'searchmatch'] ],
    \ },
    \ 'component_function': {
    \   'gitbranch': 'fugitive#head',
    \   'searchmatch': 'SearchMatchStatusline'
    \ },
    \ 'separator': { 'left': l:left_sep, 'right': l:right_sep },
    \ 'subseparator': { 'left': l:left_sub, 'right': l:right_sub },
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
"

" :TestColor [fg] [bg] [style]
" Use '-' to skip a position; use 'NONE' to clear it.
command! -nargs=* TestColor call TestColor(<f-args>)

function! TestColor(...) abort
  let fg    = a:0 >= 1 ? a:1 : ''
  let bg    = a:0 >= 2 ? a:2 : ''
  let style = a:0 >= 3 ? a:3 : ''

  let group = synIDattr(synID(line('.'), col('.'), 1), 'name')
  let parts = ['highlight', group]

  if fg != '' && fg != '-'
    call add(parts, 'guifg=' . fg)
  endif
  if bg != '' && bg != '-'
    call add(parts, 'guibg=' . bg)
  endif
  if style != '' && style != '-'
    call add(parts, 'gui='   . style)
  endif

  execute join(parts, ' ')
  echom 'Recolored ' . group . ' with: ' . (len(parts) > 2 ? join(parts[2:], ' ') : '[no changes]')
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


call which_key#register('<Space>', 'g:which_key_map')

"    <space>
"    trigger vim-which-key
 nnoremap <silent> <C-w> :WhichKey '<Space>'<CR>

"    <space>vrc
"    edit .vimrc
nmap <leader>vrc :e $MYVIMRC<CR>

"    <space>so
"    save & source .vimrc (reload settings in current vim session)
nmap <leader>so :w<CR>:source $MYVIMRC<CR>:noh<CR>:echom "sourcing .vimrc"<CR>

"    <space>dm
"    switch to dark mode
nmap <leader>dm :call SetDarkMode()<CR>

"    <space>lm
"    switch to light mode
nmap <leader>lm :call SetLightMode()<CR>

"    <space>m
"    count and display search matches
nnoremap <leader>m :call CountSearchMatches()<cr>
 
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

"    <space>nw
"    jump to next misspelled word
nmap <leader>nw ]s

"    <space>ch
"    clear highlights
nmap <leader>ch :let @/ = ""<cr>

"    <space>cs
"    correct spelling
nmap <leader>cs 1z=

"    <space>dwc
"    display word count
nmap <leader>dwc<cr>

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

"    <space>fb
"    launch fzf with focus on Buffers
nmap <leader>fb :Buffers<cr>

"    <space>ff
"    launch fzf with focus on Files in current directory
nmap <leader>ff :Files<cr>

"    <space>fg
"    launch fzf focusing on git files
nmap <leader>fg :GFiles<cr>

"    <space>fgs
"    launch fzf focusing on git status
nmap <leader>fs :GFiles?<cr>

"    <space>ft
"    launch fzf focusing on tags
nmap <leader>ft :Tags<cr>

"    <space>fc
"    launch fzf focusing on git commits
nmap <leader>fc :Commits<cr>

"    <space>fy
"    launch fzf focusing on file types
nmap <leader>fy :Filetypes<cr>


"    <space>dc
"    set DrawIt default characters
nmap <leader>dc :call SetDrawIt('│', '─', '┼', '╲', '╱', '╳', '*')<CR>

"    <space>$
"    remove trailing whitespace from end of lines
nmap <leader>$ :call Preserve("%s/\\s\\+$//e")<CR>
"
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

"    <space>ct
"    change line to title case
nmap <leader>ct :call Preserve("s/\\<\\(\\w\\)\\(\\w*\\)\\>/\\u\\1\\L\\2/g")<CR>
 
"    <space>fx
"    Toggle off table auto-formatting in VimWiki
nnoremap <leader>fx :let g:vimwiki_table_auto_fmt = 0<CR>

"    <space>fo
"    Toggle on table auto-formatting in VimWiki
nnoremap <leader>fo :let g:vimwiki_table_auto_fmt = 1<CR>

"    <space>nl
"    Navigate to the next hyperlink in VimWiki
nnoremap <leader>nl /\[<CR>:let @/ = ""<CR>

"    <space>pl
"    Navigate to the previous hyperlink in VimWiki
nnoremap <leader>pl ?\[<CR>:let @/ = ""<CR>

" <space>wh
" Open Vimwiki link in horizontal split
autocmd FileType vimwiki nmap <buffer> <Leader>wh <Plug>VimwikiSplitLink

" <space>wv
" Open Vimwiki link in vertical split
autocmd FileType vimwiki nmap <buffer> <Leader>wv <Plug>VimwikiVSplitLink

" <space>wl
" Insert Vimwiki link
nnoremap <leader>wl :SearchVimwikiFiles<CR>

" <space>wf
" Insert Vimwiki Filename
nnoremap <leader>wf :SearchVimwikiFilesFilenameOnly<CR>"

"    <space>tn
"    Create a new Task in VimWiki
nnoremap <leader>tn o[ ] <Esc>A

"    <space>tc
"    Mark Focused Task Complete
nnoremap <leader>tc :s/\v\[\s*[·]?\s*\]/[✔]/g<CR>:let @/ = ""<CR>

"    <space>ts
"    Mark Focused Task Started (In Progress)
nnoremap <leader>ts :s/\[\s\]/[·]/<CR>:let @/ = ""<CR>

"    <space>td
"    Mark Focused Task Deleted 
nnoremap <leader>td :s/\[\s\]/[✘]/<CR>:let @/ = ""<CR>

"    <space>tf
"    Mark Focused Task Forwarded
nnoremap <leader>tf :s/\[\s\]/[￫]/<CR>:let @/ = ""<CR>

" <space>rtl
" Enter Unicode Character to Force Right-to-Left Text Rendering
nmap <leader>rtl i ‮<Esc>

"    <space>h.a
"    Enter Hebrew Letter Alef
nmap <leader>h.a iא<Esc>

"    <space>h.b
"    Enter Hebrew Letter Bet
nmap <leader>h.b iב<Esc>

"    <space>h.g
"    Enter Hebrew Letter Gimel
nmap <leader>h.g iג<Esc>

"    <space>h.d
"    Enter Hebrew Letter Dalet
nmap <leader>h.d iד<Esc>

"    <space>h.h
"    Enter Hebrew Letter He
nmap <leader>h.h iה<Esc>

"    <space>h.v
"    Enter Hebrew Letter Vav
nmap <leader>h.v iו<Esc>

"    <space>h.z
"    Enter Hebrew Letter Zayin
nmap <leader>h.z iז<Esc>

"    <space>h.ch
"    Enter Hebrew Letter Chet
nmap <leader>h.x iח<Esc>

"    <space>h.t
"    Enter Hebrew Letter Tet
nmap <leader>h.t iט<Esc>

"    <space>h.y
"    Enter Hebrew Letter Yod
nmap <leader>h.y iי<Esc>

"    <space>h.k
"    Enter Hebrew Letter Kaf
nmap <leader>h.k iכ<Esc>

"    <space>h.l
"    Enter Hebrew Letter Lamed
nmap <leader>h.l iל<Esc>

"    <space>h.m
"    Enter Hebrew Letter Mem
nmap <leader>h.m iמ<Esc>

"    <space>h.n
"    Enter Hebrew Letter Nun
nmap <leader>h.n iנ<Esc>

"    <space>h.s
"    Enter Hebrew Letter Samekh
nmap <leader>h.s iס<Esc>

"    <space>h.ay
"    Enter Hebrew Letter Ayin
nmap <leader>h.ay iע<Esc>

"    <space>h.p
"    Enter Hebrew Letter Pe
nmap <leader>h.p iפ<Esc>

"    <space>h.tz
"    Enter Hebrew Letter Tsadi
nmap <leader>h.ts iצ<Esc>

"    <space>h.q
"    Enter Hebrew Letter Qof
nmap <leader>h.q iק<Esc>

"    <space>h.r
"    Enter Hebrew Letter Resh
nmap <leader>h.r iר<Esc>

"    <space>h.sh
"    Enter Hebrew Letter Shin
nmap <leader>h.sh iש<Esc>

"    <space>h.tv
"    Enter Hebrew Letter Tav
nmap <leader>h.tv iת<Esc>

"    <space>h.ks
"    Enter Hebrew Letter Kaf Sofit
nmap <leader>h.ks iך<Esc>

"    <space>h.ms
"    Enter Hebrew Letter Mem Sofit
nmap <leader>h.ms iם<Esc>

"    <space>h.ns
"    Enter Hebrew Letter Nun Sofit
nmap <leader>h.ns iן<Esc>

"    <space>h.ps
"    Enter Hebrew Letter Pe Sofit
nmap <leader>h.ps iף<Esc>

"    <space>h.tzs
"    Enter Hebrew Letter Tsadi Sofit
nmap <leader>h.tcs iץ<Esc>

"    <space>z.a
"    Enter Zodiac Sign Aries
nmap <leader>z.a i♈︎<Esc>

"    <space>z.t
"    Enter Zodiac Sign Taurus
nmap <leader>z.b i♉︎<Esc>

"    <space>z.g
"    Enter Zodiac Sign Gemini
nmap <leader>z.c i♊︎<Esc>

"    <space>z.cn
"    Enter Zodiac Sign Cancer
nmap <leader>z.d i♋︎<Esc>

"    <space>z.le
"    Enter Zodiac Sign Leo
nmap <leader>z.e i♌︎<Esc>

"    <space>z.v
"    Enter Zodiac Sign Virgo
nmap <leader>z.f i♍︎<Esc>

"    <space>z.lb
"    Enter Zodiac Sign Libra
nmap <leader>z.g i♎︎<Esc>

"    <space>z.sc
"    Enter Zodiac Sign Scorpio
nmap <leader>z.h i♏︎<Esc>

"    <space>z.sg
"    Enter Zodiac Sign Sagittarius
nmap <leader>z.i i♐︎<Esc>

"    <space>z.ca
"    Enter Zodiac Sign Capricorn
nmap <leader>z.j i♑︎<Esc>

"    <space>z.aq
"    Enter Zodiac Sign Aquarius
nmap <leader>z.k i♒︎<Esc>

"    <space>z.p
"    Enter Zodiac Sign Pisces
nmap <leader>z.l i♓︎<Esc>

"    <space>p.s
"    Enter Planet The Sun
nmap <leader>p.s i☉<Esc>

"    <space>p.mn
"    Enter Planet The Moon
nmap <leader>p.mn i☽<Esc>

"    <space>p.mr
"    Enter Planet Mercury
nmap <leader>p.mr i☿<Esc>

"    <space>p.v
"    Enter Planet Venus
nmap <leader>p.v i♀<Esc>

"    <space>p.m
"    Enter Planet Mars
nmap <leader>p.r i♂<Esc>

"    <space>p.j
"    Enter Planet Jupiter
nmap <leader>p.j i♃<Esc>

"    <space>p.s
"    Enter Planet Saturn
nmap <leader>p.t i♄<Esc>

"    <space>p.u
"    Enter Planet Uranus
nmap <leader>p.u i♅<Esc>

"    <space>p.n
"    Enter Planet Neptune
nmap <leader>p.n i♆<Esc>

"    <space>p.p
"    Enter Planet Pluto
nmap <leader>p.p i♇<Esc>

"    <space>m.nm
"    Enter New Moon
nmap <leader>m.nm i<Esc>

"    <space>m.xc
"    Enter Waxing Crescent Moon
nmap <leader>m.xc i<Esc>

"    <space>m.fq
"    Enter First Quarter Moon
nmap <leader>m.fq i<Esc>

"    <space>m.xg
"    Enter Waxing Gibbous Moon
nmap <leader>m.xg i<Esc>

"    <space>m.wd
"    Enter Full Moon
nmap <leader>m.fm i<Esc>

"    <space>m.wg
"    Enter Waning Gibbous Moon
nmap <leader>m.wg i<Esc>

"    <space>m.tq
"    Enter Waning Third Quarter Moon
nmap <leader>m.tq i<Esc>

"    <space>m.wc
"    Enter Waning Crescent Moon
nmap <leader>m.wc i<Esc>


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" VIM-WHICH-KEY CONFIGURATION 
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Only run if the plugin is installed
if exists('*which_key#register')
  " Define your keymap dictionary
" which-key menu labels
let g:which_key_map = {}

let g:which_key_map.m    = 'count search matches'
let g:which_key_map.vrc  = 'edit .vimrc'
let g:which_key_map.so   = 'source .vimrc'
let g:which_key_map.dm   = 'set dark mode'
let g:which_key_map.lm   = 'set light mode'
let g:which_key_map.tg   = 'toggle Goyo'
let g:which_key_map.sp   = 'spell check on'
let g:which_key_map.ns   = 'spell check off'
let g:which_key_map.pw   = 'previous misspelling'
let g:which_key_map.nw   = 'next misspelling'
let g:which_key_map.ch   = 'clear search highlight'
let g:which_key_map.cs   = 'correct spelling'
let g:which_key_map.dwc   = 'word count'
let g:which_key_map.si   = 'toggle invisible chars'
let g:which_key_map.ac   = 'align center'
let g:which_key_map.al   = 'align left'
let g:which_key_map.ar   = 'align right'

" ctrlp/fzf
let g:which_key_map.cp   = 'ctrl-p'
let g:which_key_map.cc   = 'ctrl-p clear cache'
let g:which_key_map.ct   = 'ctrl-p search tags'

let g:which_key_map.fb   = 'fzf buffers'
let g:which_key_map.ff   = 'fzf files'
let g:which_key_map.fg   = 'fzf git files'
let g:which_key_map.fs   = 'fzf git status'
let g:which_key_map.ft   = 'fzf tags'
let g:which_key_map.fc   = 'fzf commits'
let g:which_key_map.fy   = 'fzf filetypes'

" drawit
let g:which_key_map.dc   = 'set DrawIt characters'

" maintenance
let g:which_key_map['$'] = 'remove trailing whitespace'
let g:which_key_map['='] = 'reindent file'

" edit split
let g:which_key_map.ew   = 'edit in same window'
let g:which_key_map.es   = 'edit in split'
let g:which_key_map.ev   = 'edit in vertical split'
let g:which_key_map.et   = 'edit in tab'

" syntax
let g:which_key_map.ss   = 'show syntax groups'

" titlecase
let g:which_key_map.ct   = 'change to title case'

" vimwiki toggles
let g:which_key_map.fx  = 'vimwiki table format off'
let g:which_key_map.fo  = 'vimwiki table format on'
let g:which_key_map.wh  = 'open link in horizontal split'
let g:which_key_map.wv  = 'open link in vertical split'
let g:which_key_map.wf  = 'insert vimwiki file name'
let g:which_key_map.wl  = 'insert vimwiki link'
let g:which_key_map.nl   = 'next hyperlink'
let g:which_key_map.pl   = 'previous hyperlink'
let g:which_key_map.tn   = 'new task'
let g:which_key_map.ts   = 'task started'
let g:which_key_map.td   = 'task deleted'
let g:which_key_map.tf   = 'task forwarded'
let g:which_key_map.tc   = 'task complete'

let g:which_key_map.h = {
  \ 'name' : '+h',
  \'.': {
  \   'name': 'Hebrew Letters',
  \   'a' : 'Insert Alef',
  \   'b' : 'Insert Bet',
  \   'g' : 'Insert Gimel',
  \   'd' : 'Insert Dalet',
  \   'h' : 'Insert He',
  \   'v' : 'Insert Vav',
  \   'z' : 'Insert Zayin',
  \   'ch' : 'Insert Chet',
  \   't' : 'Insert Tet',
  \   'y' : 'Insert Yod',
  \   'k' : 'Insert Kaf',
  \   'ks' : 'Insert final Kaf',
  \   'l' : 'Insert Lamed',
  \   'm' : 'Insert Mem',
  \   'ms' : 'Insert final Mem',
  \   'n' : 'Insert Nun',
  \   'ns' : 'Insert final Nun',
  \   's' : 'Insert Samekh',
  \   'ay' : 'Insert Ayin',
  \   'p' : 'Insert Pe',
  \   'ps' : 'Insert final Pe',
  \   'tz' : 'Insert Tsadi',
  \   'tzs' : 'Insert final Tsadi',
  \   'q' : 'Insert Qof',
  \   'r' : 'Insert Resh',
  \   'sh' : 'Insert Shin',
  \   'tv' : 'Insert Tav'
  \   },
  \ }

let g:which_key_map.z = {
  \ 'name' : '+z',
  \   '.': {
  \   'name': 'Zodiac Signs',
  \   'a' : 'Insert Aries',
  \   'b' : 'Insert Taurus',
  \   'c' : 'Insert Gemini',
  \   'd' : 'Insert Cancer',
  \   'e' : 'Insert Leo',
  \   'f' : 'Insert Virgo',
  \   'g' : 'Insert Libra',
  \   'h' : 'Insert Scorpio',
  \   'i' : 'Insert Sagittarius',
  \   'j' : 'Insert Capricorn',
  \   'k' : 'Insert Aquarius',
  \   'l' : 'Insert Pisces'
  \   },
  \ }

let g:which_key_map.p = {
  \ 'name' : '+p',
  \   '.': {
  \   'name': 'Planets',
  \   's' : 'Insert Sun',
  \   'mn' : 'Insert Moon',
  \   'mr' : 'Insert Mercury',
  \   'v' : 'Insert Venus',
  \   'r' : 'Insert Mars',
  \   'j' : 'Insert Jupiter',
  \   't' : 'Insert Saturn',
  \   'u' : 'Insert Uranus',
  \   'n' : 'Insert Neptune',
  \   'p' : 'Insert Pluto'
  \   },
  \ }

let g:which_key_map.m = {
  \ 'name' : '+m',
  \   '.': {
  \   'name': 'Moon Phases',
  \   'nm' : 'Insert New Moon',
  \   'xc' : 'Insert Waxing Crescent',
  \   'fq' : 'Insert First Quarter',
  \   'xg' : 'Insert Waxing Gibbous',
  \   'fm' : 'Insert Full Moon',
  \   'wg' : 'Insert Waning Gibbous',
  \   'tq' : 'Insert Third Quarter',
  \   'wc' : 'Insert Waning Crescent'
  \   },
  \ }

  " Register the leader key with WhichKey
  call which_key#register('<Leader>', 'g:which_key_map')

  " Show WhichKey when you press <Space>
  nnoremap <silent> <Leader> :WhichKey '<Leader>'<CR>
endif


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


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" HELP DOCUMENTATION
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
packloadall
silent! helptags ALL


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" SET COLORSCHEME
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
augroup lightline_hl | au!
    " Fix issue lightline loads without colorscheme
    au Colorscheme * call lightline#disable() | call lightline#enable()
augroup END

call SetDarkMode()

