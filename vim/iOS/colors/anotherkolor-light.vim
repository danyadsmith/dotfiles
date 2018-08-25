" Vim color file
" Converted from Textmate theme Another Kolor (Light) using Coloration v0.4.0 (http://github.com/sickill/coloration)

set background=light
highlight clear

if exists("syntax_on")
  syntax reset
endif

let g:colors_name = "Another Kolor (Light)"

hi Cursor ctermfg=188 ctermbg=168 cterm=NONE guifg=#ffffd7 guibg=#e5349b gui=NONE
hi Visual ctermfg=NONE ctermbg=187 cterm=NONE guifg=NONE guibg=#cfc8b9 gui=NONE
hi CursorLine ctermfg=NONE ctermbg=188 cterm=NONE guifg=NONE guibg=#d9d6cd gui=NONE
hi CursorColumn ctermfg=NONE ctermbg=188 cterm=NONE guifg=NONE guibg=#d9d6cd gui=NONE
hi ColorColumn ctermfg=NONE ctermbg=188 cterm=NONE guifg=NONE guibg=#d9d6cd gui=NONE
hi LineNr ctermfg=248 ctermbg=188 cterm=NONE guifg=#aeaca7 guibg=#d9d6cd gui=NONE
hi VertSplit ctermfg=181 ctermbg=181 cterm=NONE guifg=#c4c2bb guibg=#c4c2bb gui=NONE
hi MatchParen ctermfg=74 ctermbg=NONE cterm=underline guifg=#31aed8 guibg=NONE gui=underline
hi StatusLine ctermfg=243 ctermbg=181 cterm=bold guifg=#777777 guibg=#c4c2bb gui=bold
hi StatusLineNC ctermfg=243 ctermbg=181 cterm=NONE guifg=#777777 guibg=#c4c2bb gui=NONE
hi Pmenu ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
hi PmenuSel ctermfg=NONE ctermbg=187 cterm=NONE guifg=NONE guibg=#cfc8b9 gui=NONE
hi IncSearch ctermfg=188 ctermbg=101 cterm=NONE guifg=#ffffd7 guibg=#9b8e6d gui=NONE
hi Search ctermfg=NONE ctermbg=NONE cterm=underline guifg=NONE guibg=NONE gui=underline
hi Directory ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
hi Folded ctermfg=181 ctermbg=188 cterm=NONE guifg=#c8c2b2 guibg=#ffffd7 gui=NONE

hi Normal ctermfg=237 ctermbg=223 cterm=NONE guifg=#777777 guibg=#ffffd7 gui=NONE
hi Boolean ctermfg=96 ctermbg=NONE cterm=NONE guifg=#94539a guibg=NONE gui=NONE
hi Character ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
hi Comment ctermfg=181 ctermbg=NONE cterm=NONE guifg=#c8c2b2 guibg=NONE gui=NONE
hi Conditional ctermfg=74 ctermbg=NONE cterm=NONE guifg=#31aed8 guibg=NONE gui=NONE
hi Constant ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
hi Define ctermfg=74 ctermbg=NONE cterm=NONE guifg=#31aed8 guibg=NONE gui=NONE
hi DiffAdd ctermfg=243 ctermbg=113 cterm=bold guifg=#777777 guibg=#9ce255 gui=bold
hi DiffDelete ctermfg=203 ctermbg=NONE cterm=NONE guifg=#ed4e4c guibg=NONE gui=NONE
hi DiffChange ctermfg=243 ctermbg=146 cterm=NONE guifg=#777777 guibg=#abc0d3 gui=NONE
hi DiffText ctermfg=243 ctermbg=74 cterm=bold guifg=#777777 guibg=#729fcf gui=bold
hi ErrorMsg ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
hi WarningMsg ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
hi Float ctermfg=202 ctermbg=NONE cterm=NONE guifg=#ff6600 guibg=NONE gui=NONE
hi Function ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
hi Identifier ctermfg=92 ctermbg=NONE cterm=NONE guifg=#9b16dd guibg=NONE gui=NONE
hi Keyword ctermfg=74 ctermbg=NONE cterm=NONE guifg=#31aed8 guibg=NONE gui=NONE
hi Label ctermfg=101 ctermbg=NONE cterm=NONE guifg=#9b8e6d guibg=NONE gui=NONE
hi NonText ctermfg=144 ctermbg=188 cterm=NONE guifg=#bab19a guibg=#dfdbd2 gui=NONE
hi Number ctermfg=202 ctermbg=NONE cterm=NONE guifg=#ff6600 guibg=NONE gui=NONE
hi Operator ctermfg=0 ctermbg=NONE cterm=NONE guifg=#000000 guibg=NONE gui=NONE
hi PreProc ctermfg=74 ctermbg=NONE cterm=NONE guifg=#31aed8 guibg=NONE gui=NONE
hi Special ctermfg=243 ctermbg=NONE cterm=NONE guifg=#777777 guibg=NONE gui=NONE
hi SpecialKey ctermfg=144 ctermbg=188 cterm=NONE guifg=#bab19a guibg=#d9d6cd gui=NONE
hi Statement ctermfg=74 ctermbg=NONE cterm=NONE guifg=#31aed8 guibg=NONE gui=NONE
hi StorageClass ctermfg=92 ctermbg=NONE cterm=NONE guifg=#9b16dd guibg=NONE gui=NONE
hi String ctermfg=101 ctermbg=NONE cterm=NONE guifg=#9b8e6d guibg=NONE gui=NONE
hi Tag ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
hi Title ctermfg=243 ctermbg=NONE cterm=bold guifg=#777777 guibg=NONE gui=bold
hi Todo ctermfg=181 ctermbg=NONE cterm=inverse,bold guifg=#c8c2b2 guibg=NONE gui=inverse,bold
hi Type ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
hi Underlined ctermfg=NONE ctermbg=NONE cterm=underline guifg=NONE guibg=NONE gui=underline
hi rubyClass ctermfg=74 ctermbg=NONE cterm=NONE guifg=#31aed8 guibg=NONE gui=NONE
hi rubyFunction ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
hi rubyInterpolationDelimiter ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
hi rubySymbol ctermfg=203 ctermbg=NONE cterm=NONE guifg=#f36465 guibg=NONE gui=NONE
hi rubyConstant ctermfg=172 ctermbg=NONE cterm=NONE guifg=#e0972b guibg=NONE gui=NONE
hi rubyStringDelimiter ctermfg=101 ctermbg=NONE cterm=NONE guifg=#9b8e6d guibg=NONE gui=NONE
hi rubyBlockParameter ctermfg=70 ctermbg=NONE cterm=NONE guifg=#4ea828 guibg=NONE gui=NONE
hi rubyInstanceVariable ctermfg=172 ctermbg=NONE cterm=NONE guifg=#e0972b guibg=NONE gui=italic
hi rubyInclude ctermfg=74 ctermbg=NONE cterm=NONE guifg=#31aed8 guibg=NONE gui=NONE
hi rubyGlobalVariable ctermfg=246 ctermbg=NONE cterm=NONE guifg=#999999 guibg=NONE gui=italic
hi rubyRegexp ctermfg=101 ctermbg=NONE cterm=NONE guifg=#9b8e6d guibg=NONE gui=NONE
hi rubyRegexpDelimiter ctermfg=101 ctermbg=NONE cterm=NONE guifg=#9b8e6d guibg=NONE gui=NONE
hi rubyEscape ctermfg=181 ctermbg=NONE cterm=NONE guifg=#c8c2b2 guibg=NONE gui=NONE
hi rubyControl ctermfg=74 ctermbg=NONE cterm=NONE guifg=#31aed8 guibg=NONE gui=NONE
hi rubyClassVariable ctermfg=70 ctermbg=NONE cterm=NONE guifg=#4ea828 guibg=NONE gui=NONE
hi rubyOperator ctermfg=0 ctermbg=NONE cterm=NONE guifg=#000000 guibg=NONE gui=NONE
hi rubyException ctermfg=74 ctermbg=NONE cterm=NONE guifg=#31aed8 guibg=NONE gui=NONE
hi rubyPseudoVariable ctermfg=172 ctermbg=NONE cterm=NONE guifg=#e0972b guibg=NONE gui=italic
hi rubyRailsUserClass ctermfg=172 ctermbg=NONE cterm=NONE guifg=#e0972b guibg=NONE gui=NONE
hi rubyRailsARAssociationMethod ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
hi rubyRailsARMethod ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
hi rubyRailsRenderMethod ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
hi rubyRailsMethod ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
hi erubyDelimiter ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
hi erubyComment ctermfg=181 ctermbg=NONE cterm=NONE guifg=#c8c2b2 guibg=NONE gui=NONE
hi erubyRailsMethod ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
hi htmlTag ctermfg=68 ctermbg=NONE cterm=NONE guifg=#3278db guibg=NONE gui=NONE
hi htmlEndTag ctermfg=68 ctermbg=NONE cterm=NONE guifg=#3278db guibg=NONE gui=NONE
hi htmlTagName ctermfg=68 ctermbg=NONE cterm=NONE guifg=#3278db guibg=NONE gui=NONE
hi htmlArg ctermfg=68 ctermbg=NONE cterm=NONE guifg=#3278db guibg=NONE gui=NONE
hi htmlSpecialChar ctermfg=149 ctermbg=NONE cterm=NONE guifg=#b8df47 guibg=NONE gui=NONE
hi javaScriptFunction ctermfg=92 ctermbg=NONE cterm=NONE guifg=#9b16dd guibg=NONE gui=NONE
hi javaScriptRailsFunction ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
hi javaScriptBraces ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
hi yamlKey ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
hi yamlAnchor ctermfg=246 ctermbg=NONE cterm=NONE guifg=#999999 guibg=NONE gui=italic
hi yamlAlias ctermfg=246 ctermbg=NONE cterm=NONE guifg=#999999 guibg=NONE gui=italic
hi yamlDocumentHeader ctermfg=101 ctermbg=NONE cterm=NONE guifg=#9b8e6d guibg=NONE gui=NONE
hi cssURL ctermfg=70 ctermbg=NONE cterm=NONE guifg=#4ea828 guibg=NONE gui=NONE
hi cssFunctionName ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
hi cssColor ctermfg=181 ctermbg=NONE cterm=NONE guifg=#c8c2b2 guibg=NONE gui=NONE
hi cssPseudoClassId ctermfg=215 ctermbg=NONE cterm=NONE guifg=#ffad73 guibg=NONE gui=NONE
hi cssClassName ctermfg=176 ctermbg=NONE cterm=NONE guifg=#e38bd5 guibg=NONE gui=NONE
hi cssValueLength ctermfg=202 ctermbg=NONE cterm=NONE guifg=#ff6600 guibg=NONE gui=NONE
hi cssCommonAttr ctermfg=74 ctermbg=NONE cterm=NONE guifg=#31aed8 guibg=NONE gui=NONE
hi cssBraces ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
