" Vim color file
" Converted from Textmate theme Another Kolor (Dark) using Coloration v0.4.0 (http://github.com/sickill/coloration)

set background=dark
highlight clear

if exists("syntax_on")
  syntax reset
endif

let g:colors_name = "Another Kolor (Dark)"

hi Cursor ctermfg=235 ctermbg=168 cterm=NONE guifg=#222222 guibg=#e5349b gui=NONE
hi Visual ctermfg=NONE ctermbg=237 cterm=NONE guifg=NONE guibg=#3c3c3c gui=NONE
hi CursorLine ctermfg=NONE ctermbg=237 cterm=NONE guifg=NONE guibg=#363636 gui=NONE
hi CursorColumn ctermfg=NONE ctermbg=237 cterm=NONE guifg=NONE guibg=#363636 gui=NONE
hi ColorColumn ctermfg=NONE ctermbg=237 cterm=NONE guifg=NONE guibg=#363636 gui=NONE
hi LineNr ctermfg=245 ctermbg=237 cterm=NONE guifg=#888888 guibg=#363636 gui=NONE
hi VertSplit ctermfg=240 ctermbg=240 cterm=NONE guifg=#5d5d5d guibg=#5d5d5d gui=NONE
hi MatchParen ctermfg=74 ctermbg=NONE cterm=underline guifg=#31aed8 guibg=NONE gui=underline
hi StatusLine ctermfg=231 ctermbg=240 cterm=bold guifg=#eeeeee guibg=#5d5d5d gui=bold
hi StatusLineNC ctermfg=231 ctermbg=240 cterm=NONE guifg=#eeeeee guibg=#5d5d5d gui=NONE
hi Pmenu ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
hi PmenuSel ctermfg=NONE ctermbg=237 cterm=NONE guifg=NONE guibg=#3c3c3c gui=NONE
hi IncSearch ctermfg=235 ctermbg=187 cterm=NONE guifg=#222222 guibg=#dad6c3 gui=NONE
hi Search ctermfg=NONE ctermbg=NONE cterm=underline guifg=NONE guibg=NONE gui=underline
hi Directory ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
hi Folded ctermfg=237 ctermbg=235 cterm=NONE guifg=#3d3d3d guibg=#222222 gui=NONE

hi Normal ctermfg=231 ctermbg=235 cterm=NONE guifg=#eeeeee guibg=#222222 gui=NONE
hi Boolean ctermfg=96 ctermbg=NONE cterm=NONE guifg=#94539a guibg=NONE gui=NONE
hi Character ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
hi Comment ctermfg=237 ctermbg=NONE cterm=NONE guifg=#3d3d3d guibg=NONE gui=NONE
hi Conditional ctermfg=74 ctermbg=NONE cterm=NONE guifg=#31aed8 guibg=NONE gui=NONE
hi Constant ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
hi Define ctermfg=74 ctermbg=NONE cterm=NONE guifg=#31aed8 guibg=NONE gui=NONE
hi DiffAdd ctermfg=231 ctermbg=64 cterm=bold guifg=#eeeeee guibg=#45820c gui=bold
hi DiffDelete ctermfg=88 ctermbg=NONE cterm=NONE guifg=#8a0707 guibg=NONE gui=NONE
hi DiffChange ctermfg=231 ctermbg=23 cterm=NONE guifg=#eeeeee guibg=#213655 gui=NONE
hi DiffText ctermfg=231 ctermbg=24 cterm=bold guifg=#eeeeee guibg=#204a87 gui=bold
hi ErrorMsg ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
hi WarningMsg ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
hi Float ctermfg=230 ctermbg=NONE cterm=NONE guifg=#fefed0 guibg=NONE gui=NONE
hi Function ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
hi Identifier ctermfg=74 ctermbg=NONE cterm=NONE guifg=#31aed8 guibg=NONE gui=NONE
hi Keyword ctermfg=74 ctermbg=NONE cterm=NONE guifg=#31aed8 guibg=NONE gui=NONE
hi Label ctermfg=187 ctermbg=NONE cterm=NONE guifg=#dad6c3 guibg=NONE gui=NONE
hi NonText ctermfg=239 ctermbg=236 cterm=NONE guifg=#525252 guibg=#2c2c2c gui=NONE
hi Number ctermfg=230 ctermbg=NONE cterm=NONE guifg=#fefed0 guibg=NONE gui=NONE
hi Operator ctermfg=15 ctermbg=NONE cterm=NONE guifg=#ffffff guibg=NONE gui=NONE
hi PreProc ctermfg=74 ctermbg=NONE cterm=NONE guifg=#31aed8 guibg=NONE gui=NONE
hi Special ctermfg=231 ctermbg=NONE cterm=NONE guifg=#eeeeee guibg=NONE gui=NONE
hi SpecialKey ctermfg=239 ctermbg=237 cterm=NONE guifg=#525252 guibg=#363636 gui=NONE
hi Statement ctermfg=74 ctermbg=NONE cterm=NONE guifg=#31aed8 guibg=NONE gui=NONE
hi StorageClass ctermfg=74 ctermbg=NONE cterm=NONE guifg=#31aed8 guibg=NONE gui=NONE
hi String ctermfg=187 ctermbg=NONE cterm=NONE guifg=#dad6c3 guibg=NONE gui=NONE
hi Tag ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
hi Title ctermfg=231 ctermbg=NONE cterm=bold guifg=#eeeeee guibg=NONE gui=bold
hi Todo ctermfg=237 ctermbg=NONE cterm=inverse,bold guifg=#3d3d3d guibg=NONE gui=inverse,bold
hi Type ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
hi Underlined ctermfg=NONE ctermbg=NONE cterm=underline guifg=NONE guibg=NONE gui=underline
hi rubyClass ctermfg=74 ctermbg=NONE cterm=NONE guifg=#31aed8 guibg=NONE gui=NONE
hi rubyFunction ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
hi rubyInterpolationDelimiter ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
hi rubySymbol ctermfg=203 ctermbg=NONE cterm=NONE guifg=#f36465 guibg=NONE gui=NONE
hi rubyConstant ctermfg=169 ctermbg=NONE cterm=NONE guifg=#e642a2 guibg=NONE gui=NONE
hi rubyStringDelimiter ctermfg=187 ctermbg=NONE cterm=NONE guifg=#dad6c3 guibg=NONE gui=NONE
hi rubyBlockParameter ctermfg=70 ctermbg=NONE cterm=NONE guifg=#4ea828 guibg=NONE gui=NONE
hi rubyInstanceVariable ctermfg=169 ctermbg=NONE cterm=NONE guifg=#e642a2 guibg=NONE gui=italic
hi rubyInclude ctermfg=74 ctermbg=NONE cterm=NONE guifg=#31aed8 guibg=NONE gui=NONE
hi rubyGlobalVariable ctermfg=116 ctermbg=NONE cterm=NONE guifg=#90c9d3 guibg=NONE gui=italic
hi rubyRegexp ctermfg=187 ctermbg=NONE cterm=NONE guifg=#dad6c3 guibg=NONE gui=NONE
hi rubyRegexpDelimiter ctermfg=187 ctermbg=NONE cterm=NONE guifg=#dad6c3 guibg=NONE gui=NONE
hi rubyEscape ctermfg=15 ctermbg=NONE cterm=NONE guifg=#ffffff guibg=NONE gui=NONE
hi rubyControl ctermfg=74 ctermbg=NONE cterm=NONE guifg=#31aed8 guibg=NONE gui=NONE
hi rubyClassVariable ctermfg=70 ctermbg=NONE cterm=NONE guifg=#4ea828 guibg=NONE gui=NONE
hi rubyOperator ctermfg=15 ctermbg=NONE cterm=NONE guifg=#ffffff guibg=NONE gui=NONE
hi rubyException ctermfg=74 ctermbg=NONE cterm=NONE guifg=#31aed8 guibg=NONE gui=NONE
hi rubyPseudoVariable ctermfg=169 ctermbg=NONE cterm=NONE guifg=#e642a2 guibg=NONE gui=italic
hi rubyRailsUserClass ctermfg=169 ctermbg=NONE cterm=NONE guifg=#e642a2 guibg=NONE gui=NONE
hi rubyRailsARAssociationMethod ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
hi rubyRailsARMethod ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
hi rubyRailsRenderMethod ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
hi rubyRailsMethod ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
hi erubyDelimiter ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
hi erubyComment ctermfg=237 ctermbg=NONE cterm=NONE guifg=#3d3d3d guibg=NONE gui=NONE
hi erubyRailsMethod ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
hi htmlTag ctermfg=74 ctermbg=NONE cterm=NONE guifg=#32b1db guibg=NONE gui=NONE
hi htmlEndTag ctermfg=74 ctermbg=NONE cterm=NONE guifg=#32b1db guibg=NONE gui=NONE
hi htmlTagName ctermfg=74 ctermbg=NONE cterm=NONE guifg=#32b1db guibg=NONE gui=NONE
hi htmlArg ctermfg=74 ctermbg=NONE cterm=NONE guifg=#32b1db guibg=NONE gui=NONE
hi htmlSpecialChar ctermfg=228 ctermbg=NONE cterm=NONE guifg=#f9fb8c guibg=NONE gui=NONE
hi javaScriptFunction ctermfg=74 ctermbg=NONE cterm=NONE guifg=#31aed8 guibg=NONE gui=NONE
hi javaScriptRailsFunction ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
hi javaScriptBraces ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
hi yamlKey ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
hi yamlAnchor ctermfg=116 ctermbg=NONE cterm=NONE guifg=#90c9d3 guibg=NONE gui=italic
hi yamlAlias ctermfg=116 ctermbg=NONE cterm=NONE guifg=#90c9d3 guibg=NONE gui=italic
hi yamlDocumentHeader ctermfg=187 ctermbg=NONE cterm=NONE guifg=#dad6c3 guibg=NONE gui=NONE
hi cssURL ctermfg=70 ctermbg=NONE cterm=NONE guifg=#4ea828 guibg=NONE gui=NONE
hi cssFunctionName ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
hi cssColor ctermfg=15 ctermbg=NONE cterm=NONE guifg=#ffffff guibg=NONE gui=NONE
hi cssPseudoClassId ctermfg=215 ctermbg=NONE cterm=NONE guifg=#ffad73 guibg=NONE gui=NONE
hi cssClassName ctermfg=218 ctermbg=NONE cterm=NONE guifg=#edb4e4 guibg=NONE gui=NONE
hi cssValueLength ctermfg=230 ctermbg=NONE cterm=NONE guifg=#fefed0 guibg=NONE gui=NONE
hi cssCommonAttr ctermfg=74 ctermbg=NONE cterm=NONE guifg=#31aed8 guibg=NONE gui=NONE
hi cssBraces ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
