" Vim color file
" Converted from Textmate theme Another Kolor (Dark) using Coloration v0.4.0 (http://github.com/sickill/coloration)

set background=dark
highlight clear

if exists("syntax_on")
  syntax reset
endif

let g:colors_name = "anotherkolor-dark"

hi Cursor ctermfg=235 ctermbg=168 cterm=NONE guifg=#ffffff guibg=#ff5faf gui=NONE
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
hi Search ctermfg=NONE ctermbg=NONE cterm=NONE guifg=#222222 guibg=#fff654 gui=NONE
hi Directory ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
hi Folded ctermfg=237 ctermbg=235 cterm=NONE guifg=#3d3d3d guibg=#222222 gui=NONE

hi Normal ctermfg=231 ctermbg=233 cterm=NONE guifg=#eeeeee guibg=#121212 gui=NONE
hi DiffAdd ctermfg=231 ctermbg=64 cterm=bold guifg=#eeeeee guibg=#45820c gui=bold
hi DiffDelete ctermfg=88 ctermbg=NONE cterm=NONE guifg=#8a0707 guibg=NONE gui=NONE
hi DiffChange ctermfg=231 ctermbg=23 cterm=NONE guifg=#eeeeee guibg=#213655 gui=NONE
hi DiffText ctermfg=231 ctermbg=24 cterm=bold guifg=#eeeeee guibg=#204a87 gui=bold
hi ErrorMsg ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
hi WarningMsg ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
hi NonText ctermfg=239 ctermbg=236 cterm=NONE guifg=#3a3a3a guibg=NONE gui=NONE
hi SpecialKey ctermfg=239 ctermbg=237 cterm=NONE guifg=#3a3a3a guibg=NONE gui=NONE
hi Title ctermfg=231 ctermbg=NONE cterm=bold guifg=#eeeeee guibg=NONE gui=bold

hi Boolean ctermfg=96 ctermbg=NONE cterm=NONE guifg=#94539a guibg=NONE gui=NONE
hi Character ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
hi Comment ctermfg=237 ctermbg=NONE cterm=NONE guifg=#3d3d3d guibg=NONE gui=NONE
hi Conditional ctermfg=74 ctermbg=NONE cterm=NONE guifg=#31aed8 guibg=NONE gui=NONE
hi Constant ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
hi Define ctermfg=74 ctermbg=NONE cterm=NONE guifg=#31aed8 guibg=NONE gui=NONE
hi Float ctermfg=230 ctermbg=NONE cterm=NONE guifg=#fefed0 guibg=NONE gui=NONE
hi Function ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
hi Identifier ctermfg=74 ctermbg=NONE cterm=NONE guifg=#31aed8 guibg=NONE gui=NONE
hi Keyword ctermfg=74 ctermbg=NONE cterm=NONE guifg=#31aed8 guibg=NONE gui=NONE
hi Label ctermfg=187 ctermbg=NONE cterm=NONE guifg=#dad6c3 guibg=NONE gui=NONE
hi Number ctermfg=230 ctermbg=NONE cterm=NONE guifg=#fefed0 guibg=NONE gui=NONE
hi Operator ctermfg=15 ctermbg=NONE cterm=NONE guifg=#ffffff guibg=NONE gui=NONE
hi PreProc ctermfg=74 ctermbg=NONE cterm=NONE guifg=#31aed8 guibg=NONE gui=NONE
hi Special ctermfg=231 ctermbg=NONE cterm=NONE guifg=#eeeeee guibg=NONE gui=NONE
hi Statement ctermfg=74 ctermbg=NONE cterm=NONE guifg=#31aed8 guibg=NONE gui=NONE
hi StorageClass ctermfg=74 ctermbg=NONE cterm=NONE guifg=#31aed8 guibg=NONE gui=NONE
hi String ctermfg=187 ctermbg=NONE cterm=NONE guifg=#dad6c3 guibg=NONE gui=NONE
hi Tag ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
hi Todo ctermfg=237 ctermbg=NONE cterm=inverse,bold guifg=#3d3d3d guibg=NONE gui=inverse,bold
hi Type ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
hi Underlined ctermfg=NONE ctermbg=NONE cterm=underline guifg=NONE guibg=NONE gui=underline

hi Class ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
hi DefinedName ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
hi Enumerator ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
hi Function ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
hi EnumerationName ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
hi Member ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
hi Structure ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
hi Type ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
hi Union ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
hi GlobalConstant ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
hi GlobalVariable ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
hi LocalVariable ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
hi Field ctermfg=NONE ctermbg=NONE cterm=NONE guifg=#e642a2 guibg=NONE gui=NONE
hi Method ctermfg=NONE ctermbg=NONE cterm=NONE guifg=#4ea828 guibg=NONE gui=NONE
hi Property ctermfg=NONE ctermbg=NONE cterm=NONE guifg=#b4e3f2 guibg=NONE gui=NONE

hi rubyClass ctermfg=74 ctermbg=NONE cterm=NONE guifg=#f9fb8c guibg=NONE gui=NONE
hi rubyFunction ctermfg=NONE ctermbg=NONE cterm=NONE guifg=#f9fb8c guibg=NONE gui=NONE
hi rubyMethodBlock ctermfg=NONE ctermbg=NONE cterm=NONE guifg=#32b1db guibg=NONE gui=NONE
hi rubyInterpolationDelimiter ctermfg=NONE ctermbg=NONE cterm=NONE guifg=#ffad73 guibg=NONE gui=NONE
hi rubyKeywordAsMethod ctermfg=NONE ctermbg=NONE cterm=NONE guifg=#ffad73 guibg=NONE gui=NONE
hi rubySymbol ctermfg=203 ctermbg=NONE cterm=NONE guifg=#f36465 guibg=NONE gui=NONE
hi rubyConstant ctermfg=169 ctermbg=NONE cterm=NONE guifg=#e642a2 guibg=NONE gui=NONE
hi rubyStringDelimiter ctermfg=187 ctermbg=NONE cterm=NONE guifg=#f9fb8c guibg=NONE gui=NONE
hi rubyString ctermfg=187 ctermbg=NONE cterm=NONE guifg=#fefed0 guibg=NONE gui=NONE
hi rubyBlockParameter ctermfg=70 ctermbg=NONE cterm=NONE guifg=#4ea828 guibg=NONE gui=NONE
hi rubyInstanceVariable ctermfg=169 ctermbg=NONE cterm=italic guifg=#e642a2 guibg=NONE gui=italic
hi rubyInclude ctermfg=74 ctermbg=NONE cterm=NONE guifg=#31aed8 guibg=NONE gui=NONE
hi rubyGlobalVariable ctermfg=116 ctermbg=NONE cterm=italic guifg=#90c9d3 guibg=NONE gui=italic
hi rubyRegexp ctermfg=187 ctermbg=NONE cterm=NONE guifg=#dad6c3 guibg=NONE gui=NONE
hi rubyRegexpDelimiter ctermfg=187 ctermbg=NONE cterm=NONE guifg=#dad6c3 guibg=NONE gui=NONE
hi rubyEscape ctermfg=15 ctermbg=NONE cterm=NONE guifg=#ffffff guibg=NONE gui=NONE
hi rubyControl ctermfg=74 ctermbg=NONE cterm=NONE guifg=#31aed8 guibg=NONE gui=NONE
hi rubyClassVariable ctermfg=70 ctermbg=NONE cterm=NONE guifg=#4ea828 guibg=NONE gui=NONE
hi rubyOperator ctermfg=15 ctermbg=NONE cterm=NONE guifg=#ffffff guibg=NONE gui=NONE
hi rubyException ctermfg=74 ctermbg=NONE cterm=NONE guifg=#31aed8 guibg=NONE gui=NONE
hi rubyPseudoVariable ctermfg=169 ctermbg=NONE cterm=italic guifg=#e642a2 guibg=NONE gui=italic
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
hi htmlArg ctermfg=74 ctermbg=NONE cterm=NONE guifg=#B4E3F2 guibg=NONE gui=NONE
hi htmlSpecialChar ctermfg=228 ctermbg=NONE cterm=NONE guifg=#f9fb8c guibg=NONE gui=NONE
hi htmlString ctermfg=NONE ctermbg=NONE cterm=NONE guifg=#fefed0 guibg=NONE gui=NONE
hi htmlSpecialTagName ctermfg=NONE ctermbg=NONE cterm=NONE guifg=#47a628 guibg=NONE gui=NONE
hi htmlTitle ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
hi htmlH1 ctermfg=NONE ctermbg=NONE cterm=bold guifg=#ffffff guibg=NONE gui=bold
hi htmlLink ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
hi htmlComment ctermfg=NONE ctermbg=NONE cterm=NONE guifg=#3a3a3a guibg=NONE gui=NONE
hi htmlScriptTag ctermfg=NONE ctermbg=NONE cterm=NONE guifg=#47A628

hi jsFunction ctermfg=74 ctermbg=NONE cterm=NONE guifg=#31aed8 guibg=NONE gui=NONE
hi jsFuncName ctermfg=74 ctermbg=NONE cterm=NONE guifg=#f9fb8c guibg=NONE gui=NONE
hi jsFuncArgs ctermfg=74 ctermbg=NONE cterm=NONE guifg=#FFAF47 guibg=NONE gui=NONE
hi jsFuncCall ctermfg=74 ctermbg=NONE cterm=NONE guifg=#47A628 guibg=NONE gui=NONE
hi jsString ctermfg=NONE ctermbg=NONE cterm=NONE guifg=#fefed0 guibg=NONE gui=NONE
hi jsNull ctermfg=NONE ctermbg=NONE cterm=NONE guifg=#ff615a guibg=NONE gui=NONE
hi jsUndefined ctermfg=NONE ctermbg=NONE cterm=NONE guifg=#ff615a guibg=NONE gui=NONE
hi jsBrackets ctermfg=74 ctermbg=NONE cterm=NONE guifg=#31aed8 guibg=NONE gui=NONE
hi jsObjectBraces ctermfg=74 ctermbg=NONE cterm=NONE guifg=#31aed8 guibg=NONE gui=NONE
hi jsObjectKey ctermfg=74 ctermbg=NONE cterm=NONE guifg=#b4e3f2 guibg=NONE gui=NONE
hi jsObjectValue ctermfg=74 ctermbg=NONE cterm=NONE guifg=#b4e3f2 guibg=NONE gui=NONE
hi jsParens ctermfg=74 ctermbg=NONE cterm=NONE guifg=#47A628 guibg=NONE gui=NONE
hi jsParensIfElse ctermfg=74 ctermbg=NONE cterm=NONE guifg=#ffffff guibg=NONE gui=NONE
hi jsParenIfElse ctermfg=74 ctermbg=NONE cterm=NONE guifg=#ffffff guibg=NONE gui=NONE
hi jsParensRepeat ctermfg=74 ctermbg=NONE cterm=NONE guifg=#ffffff guibg=NONE gui=NONE
hi jsGlobalObjects ctermfg=74 ctermbg=NONE cterm=NONE guifg=#E642A2 guibg=NONE gui=NONE
hi jsOperatorKeyword ctermfg=74 ctermbg=NONE cterm=NONE guifg=#FF615A guibg=NONE gui=NONE
hi javaScriptFunction ctermfg=74 ctermbg=NONE cterm=NONE guifg=#31aed8 guibg=NONE gui=NONE
hi javaScriptRailsFunction ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
hi javaScriptBraces ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE

hi yamlKey ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
hi yamlAnchor ctermfg=116 ctermbg=NONE cterm=italic guifg=#90c9d3 guibg=NONE gui=italic
hi yamlAlias ctermfg=116 ctermbg=NONE cterm=italic guifg=#90c9d3 guibg=NONE gui=italic
hi yamlDocumentHeader ctermfg=187 ctermbg=NONE cterm=NONE guifg=#dad6c3 guibg=NONE gui=NONE

hi cssURL ctermfg=70 ctermbg=NONE cterm=NONE guifg=#4ea828 guibg=NONE gui=NONE
hi cssFunctionName ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
hi cssColor ctermfg=15 ctermbg=NONE cterm=NONE guifg=#ffffff guibg=NONE gui=NONE
hi cssPseudoClassId ctermfg=215 ctermbg=NONE cterm=NONE guifg=#ffad73 guibg=NONE gui=NONE
hi cssIdentifier ctermfg=218 ctermbg=NONE cterm=NONE guifg=#E642A2 guibg=NONE gui=NONE
hi cssProc ctermfg=74 ctermbg=NONE cterm=NONE guifg=#b4e3f2 guibg=NONE gui=NONE
hi cssClassName ctermfg=218 ctermbg=NONE cterm=NONE guifg=#edb4e4 guibg=NONE gui=NONE
hi cssValueLength ctermfg=230 ctermbg=NONE cterm=NONE guifg=#fefed0 guibg=NONE gui=NONE
hi cssCommonAttr ctermfg=74 ctermbg=NONE cterm=NONE guifg=#31aed8 guibg=NONE gui=NONE
hi cssBraces ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE

hi GitGutterAdd ctermfg=NONE ctermbg=NONE cterm=NONE guifg=#47a628 guibg=NONE gui=NONE
hi GitGutterDelete ctermfg=NONE ctermbg=NONE cterm=NONE guifg=#ff0000 guibg=NONE gui=NONE
hi GitGutterChange ctermfg=NONE ctermbg=NONE cterm=NONE guifg=#31ade8 guibg=NONE gui=NONE
hi GitGutterChangeDelete ctermfg=NONE ctermbg=NONE cterm=NONE guifg=#c02b83 guibg=NONE gui=NONE

hi markdownHeadingDelimiter ctermfg=NONE ctermbg=NONE cterm=NONE guifg=#3a3a3a guibg=NONE gui=NONE
hi markdownH1 ctermfg=NONE ctermbg=NONE cterm=bold guifg=#ffffff guibg=NONE gui=bold
hi markdownH2 ctermfg=NONE ctermbg=NONE cterm=bold guifg=#31aed8 guibg=NONE gui=bold
hi markdownH3 ctermfg=NONE ctermbg=NONE cterm=bold guifg=#31aed8 guibg=NONE gui=bold
hi markdownH4 ctermfg=NONE ctermbg=NONE cterm=bold guifg=#31aed8 guibg=NONE gui=bold
hi markdownH5 ctermfg=NONE ctermbg=NONE cterm=bold guifg=#31aed8 guibg=NONE gui=bold
hi markdownH6 ctermfg=NONE ctermbg=NONE cterm=bold guifg=#31aed8 guibg=NONE gui=bold
hi markdownBold ctermfg=NONE ctermbg=NONE cterm=bold guifg=#FF615A guibg=NONE gui=bold
hi markdownItalic ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=italic
hi markdownCodeDelimiter ctermfg=NONE ctermbg=NONE cterm=NONE guifg=#94c470 guibg=NONE gui=NONE
hi markdownCodeBlock ctermfg=NONE ctermbg=NONE cterm=NONE guifg=#94c470 guibg=NONE gui=NONE
hi markdownCode ctermfg=NONE ctermbg=NONE cterm=NONE guifg=#94c470 guibg=NONE gui=NONE
hi markdownLinkText ctermfg=NONE ctermbg=NONE cterm=NONE guifg=#edb4e4 guibg=NONE gui=NONE
hi markdownLinkTextDelimiter ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
hi markdownLink ctermfg=NONE ctermbg=NONE cterm=NONE guifg=#edb4e4 guibg=NONE gui=NONE
hi markdownUrl ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
hi markdownListMarker ctermfg=NONE ctermbg=NONE cterm=NONE guifg=#C02B83 guibg=NONE gui=NONE
hi markdownBlockquote ctermfg=NONE ctermbg=NONE cterm=NONE guifg=#7801FF guibg=NONE gui=NONE
hi mmdTable ctermfg=NONE ctermbg=NONE cterm=NONE guifg=#ffad73 guibg=NONE gui=NONE
hi mmdTableHeader ctermfg=NONE ctermbg=NONE cterm=NONE guifg=#ffad73 guibg=NONE gui=NONE
hi mmdTableDelimiter ctermfg=NONE ctermbg=NONE cterm=NONE guifg=#ffad73 guibg=NONE gui=NONE

hi xmlTag ctermfg=NONE ctermbg=NONE cterm=NONE guifg=#31aed8 guibg=NONE gui=NONE
hi xmlTagName ctermfg=NONE ctermbg=NONE cterm=NONE guifg=#31aed8 guibg=NONE gui=NONE
hi xmlEndTag ctermfg=NONE ctermbg=NONE cterm=NONE guifg=#31aed8 guibg=NONE gui=NONE

hi vimHiGroup ctermfg=NONE ctermbg=NONE cterm=NONE guifg=#edb4e4 guibg=NONE gui=NONE
hi vimHiTerm ctermfg=NONE ctermbg=NONE cterm=NONE guifg=#b4e3f2 guibg=NONE gui=NONE

hi csClassType ctermfg=NONE ctermbg=NONE cterm=NONE guifg=#f9fb8c guibg=NONE gui=NONE
hi csClass ctermfg=NONE ctermbg=NONE cterm=NONE guifg=#f9fb8c guibg=NONE gui=NONE
hi csEnclosed ctermfg=NONE ctermbg=NONE cterm=NONE guifg=#ffffff guibg=NONE gui=NONE
hi csModifier ctermfg=NONE ctermbg=NONE cterm=NONE guifg=#D0B7ED guibg=NONE gui=NONE
hi csType ctermfg=NONE ctermbg=NONE cterm=NONE guifg=#31aed8 guibg=NONE gui=NONE
hi csUnspecifiedStatement ctermfg=NONE ctermbg=NONE cterm=NONE guifg=#31aed8 guibg=NONE gui=NONE
hi csEndColon ctermfg=NONE ctermbg=NONE cterm=NONE guifg=#31aed8 guibg=NONE gui=NONE
hi csOpSymbols ctermfg=NONE ctermbg=NONE cterm=NONE guifg=#ffffff guibg=NONE gui=NONE
hi csBraces ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
hi csNew ctermfg=NONE ctermbg=NONE cterm=NONE guifg=#31aed8 guibg=NONE gui=NONE
hi csNewType ctermfg=NONE ctermbg=NONE cterm=NONE guifg=#31aed8 guibg=NONE gui=NONE
hi csParens ctermfg=NONE ctermbg=NONE cterm=NONE guifg=#ffffff guibg=NONE gui=NONE
hi csRepeat ctermfg=NONE ctermbg=NONE cterm=NONE guifg=#ffaf47 guibg=NONE gui=NONE
hi csConditional ctermfg=NONE ctermbg=NONE cterm=NONE guifg=#43D3C1 guibg=NONE gui=NONE
hi csQuote ctermfg=NONE ctermbg=NONE cterm=NONE guifg=#f9fb8c guibg=NONE gui=NONE
hi csString ctermfg=NONE ctermbg=NONE cterm=NONE guifg=#fefed0 guibg=NONE gui=NONE
hi csLabel  ctermfg=NONE ctermbg=NONE cterm=NONE guifg=#43d3c1 guibg=NONE gui=NONE
hi csComment  ctermfg=NONE ctermbg=NONE cterm=NONE guifg=#3d3d3d guibg=NONE gui=NONE
hi csAttribute  ctermfg=NONE ctermbg=NONE cterm=NONE guifg=#4ea828 guibg=NONE gui=NONE
hi csLinq  ctermfg=NONE ctermbg=NONE cterm=NONE guifg=#edb4e4 guibg=NONE gui=NONE
hi csException ctermfg=NONE ctermbg=NONE cterm=NONE guifg=#E642A2 guibg=NONE gui=NONE
hi csConstant ctermfg=NONE ctermbg=NONE cterm=NONE guifg=#fefed0 guibg=NONE gui=NONE
hi csTodo ctermfg=NONE ctermbg=NONE cterm=NONE guifg=#FF615A guibg=NONE gui=NONE
hi csIsType ctermfg=NONE ctermbg=NONE cterm=NONE guifg=#FF615A guibg=NONE gui=NONE
hi csIsInterpolation ctermfg=NONE ctermbg=NONE cterm=NONE guifg=#ffaf47 guibg=NONE gui=NONE
hi csIsInterpolatedString ctermfg=NONE ctermbg=NONE cterm=NONE guifg=#ffaf47 guibg=NONE gui=NONE
hi csEscapedInterpolation ctermfg=NONE ctermbg=NONE cterm=NONE guifg=#ffaf47 guibg=NONE gui=NONE
hi csIsInterpolationFormat ctermfg=NONE ctermbg=NONE cterm=NONE guifg=#ffaf47 guibg=NONE gui=NONE
hi csIsInterpolationAlign ctermfg=NONE ctermbg=NONE cterm=NONE guifg=#ffaf47 guibg=NONE gui=NONE
hi csIsInterpolationFormatDel ctermfg=NONE ctermbg=NONE cterm=NONE guifg=#ffaf47 guibg=NONE gui=NONE
hi csIsInterpolationAlignDel ctermfg=NONE ctermbg=NONE cterm=NONE guifg=#ffaf47 guibg=NONE gui=NONE
hi csBraces ctermfg=NONE ctermbg=NONE cterm=NONE guifg=#b4e3f2 guibg=NONE gui=NONE


