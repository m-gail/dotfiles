let s:background = "#0e1316"
let s:background_alt_1 = "#1d282e"
let s:background_alt_2 = "#2d3e47"
let s:foreground = "#b8cca3"
let s:foreground_alt_1 = "#91998a"
let s:foreground_alt_2 = "#60665c"

let s:red = "#a63232"
let s:yellow = "#a6a632"
let s:orange = "#a66c32"
let s:green = "#6ca632"
let s:cyan = "#32a6a6"
let s:blue = "#3262a6"
let s:purple = "#4532a6"

highlight clear

function! s:highlight(group, fg, bg, opts = "NONE")
    execute 'highlight' a:group 
    \ 'guifg=' . a:fg
    \ 'guibg=' . a:bg
    \ 'cterm=' . a:opts
    \ 'gui=' . a:opts
endfunction

call s:highlight('Normal', s:foreground, s:background)
call s:highlight('EndOfBuffer', s:background, s:background)
call s:highlight('Fg', s:foreground, 'NONE')
call s:highlight('Title', s:foreground, 'NONE')
call s:highlight('VertSplit', s:background_alt_1, s:background)

call s:highlight('Keyword', s:green, 'NONE')
call s:highlight('Conditional', s:green, 'NONE')
call s:highlight('Repeat', s:green, 'NONE')
call s:highlight('Exception', s:green, 'NONE')
call s:highlight('Error', s:red, 'NONE')
call s:highlight('Search', '#ffffff', s:green)
call s:highlight('Function', s:cyan, 'NONE')
call s:highlight('Method', s:cyan, 'NONE')
call s:highlight('PreProc', s:green, 'NONE', "bold")
hi Statement guifg=#6ca632
hi Constant guifg=#32a6a6
call s:highlight('Type', s:foreground_alt_1, 'NONE')
hi Identifier guifg=#6ca632
call s:highlight('Comment', s:foreground_alt_2, 'NONE')

call s:highlight('Boolean', s:blue, 'NONE')
call s:highlight('Number', s:blue, 'NONE')
call s:highlight('Float', s:blue, 'NONE')
call s:highlight('None', s:blue, 'NONE')
call s:highlight('String', s:yellow, 'NONE')
call s:highlight('Character', s:yellow, 'NONE')

call s:highlight('CursorLine', 'NONE', s:background_alt_1)
call s:highlight('Visual', 'NONE', s:background_alt_2)
call s:highlight('LineNr', s:foreground_alt_1, s:background)
call s:highlight('CursorLineNr', s:green, s:background)
call s:highlight('SignColumn', 'NONE', s:background)

call s:highlight('Pmenu', s:foreground, s:background_alt_1)
call s:highlight('PmenuSel', s:foreground, s:background_alt_2)
call s:highlight('PmenuSbar', s:foreground, s:background_alt_1)
call s:highlight('PmenuThumb', s:foreground, s:background_alt_2)

call s:highlight('MatchParen', 'NONE', s:background_alt_2)

call s:highlight('Folded', s:foreground_alt_1, 'NONE')


" Treesitter
hi link TSFunction Function
hi link TSFuncBuiltin Function
hi link TSMethod Method
hi link TSText Fg
hi link TSTitle Fg

hi link TSKeyword Keyword
hi link TSType Type
hi link TSVariableBuiltin Keyword
hi link TSKeywordFunction Keyword
hi link TSKeywordOperator Keyword
hi link TSConditional Conditional
hi link TSRepeat Repeat
hi link TSException Exception

hi link TSBoolean Boolean
hi link TSNumber Number
hi link TSFlaot Float
hi link TSString String
hi link TSNone None
hi link TSSCharacter Character
hi link TSInclude Keyword

hi link TSAttribute Fg
hi link TSField Fg
hi link TSOperator Fg
hi link TSParameter Fg
hi link TSProperty Fg
hi link TSParameterReference Fg
hi link TSConstructor Type
hi link TSPunctBracket Fg
hi link TSPunctDelimiter Fg
hi link TSPunctSpecial Fg

hi link TSComment Comment

call s:highlight('TSConstBuiltin', s:blue, 'NONE')

" Telescope
hi TelescopeMatching guifg=#6ca632
hi link TelescopeSelection CursorLine

" Hop
hi HopUnmatched guifg=#30332e
hi HopNextKey guifg=#6ca632
hi HopNextKey1 guifg=#32a6a6
hi link HopNextKey2 HopNextKey1

" Lsp
call s:highlight('DiagnosticSignError', s:red, s:background)
call s:highlight('DiagnosticSignWarn', s:orange, s:background)
call s:highlight('DiagnosticSignInfo', s:foreground_alt_1, s:background)
call s:highlight('DiagnosticSignHint', s:foreground_alt_1, s:background)
call s:highlight('DiagnosticError', s:red, 'NONE')
call s:highlight('DiagnosticWarn', s:orange, 'NONE')
call s:highlight('DiagnosticInfo', s:foreground_alt_1, 'NONE')
call s:highlight('DiagnosticHint', s:foreground_alt_1, 'NONE')

" Gitsigns
call s:highlight('GitSignsAdd', s:green, s:background)
call s:highlight('GitSignsChange', s:cyan, s:background)
call s:highlight('GitSignsDelete', s:red, s:background)

" Nvim-cmp
call s:highlight('CmpItemAbbr', s:foreground, 'NONE')
call s:highlight('CmpItemAbbrDeprecated', s:foreground, 'NONE')
call s:highlight('CmpItemMenu', s:foreground, 'NONE')
call s:highlight('CmpItemKind', s:foreground, 'NONE')
call s:highlight('CmpItemKindFunction', s:cyan, 'NONE')
call s:highlight('CmpItemKindMethod', s:cyan, 'NONE')
call s:highlight('CmpItemKindKeyword', s:green, 'NONE')

" Nvim-Tree
call s:highlight('NvimTreeRootFolder', s:green, 'NONE')
call s:highlight('NvimTreeFolderIcon', s:green, 'NONE')
call s:highlight('NvimTreeFolderName', s:foreground, 'NONE')
call s:highlight('NvimTreeEmptyFolderName', s:foreground, 'NONE')
call s:highlight('NvimTreeOpenedFolderName', s:foreground, 'NONE')
call s:highlight('NvimTreeGitStaged', s:green, 'NONE')
call s:highlight('NvimTreeGitRenamed', s:blue, 'NONE')
call s:highlight('NvimTreeGitNew', s:cyan, 'NONE')
call s:highlight('NvimTreeGitDeleted', s:red, 'NONE')

" Alpha
call s:highlight('AlphaHeader', s:green, 'NONE')
call s:highlight('AlphaFooter', s:yellow, 'NONE', "italic")

" Nvim-dap
call s:highlight('DapBreakpoint', s:red, 'NONE')
