" hello
hi clear
set background=dark
if exists("syntax_on")
  syntax reset
endif
let g:colors_name = "travis"

hi Normal								guifg=black	guibg=white
hi Comment	ctermfg=green				cterm=none	guifg=green	guibg=white
hi Constant	ctermfg=black				cterm=none	guifg=black	guibg=white
hi Identifier	ctermfg=black				cterm=none	guifg=white	guibg=white
hi Special	ctermfg=black				cterm=none	guifg=black	guibg=white
hi TravisKey	ctermfg=lightblue				cterm=bold	guifg=lightblue	guibg=white	gui=bold
hi Label	ctermfg=lightblue				cterm=bold	guifg=lightblue	guibg=white	gui=bold
hi Conditional	ctermfg=lightblue				cterm=bold	guifg=lightblue	guibg=white	gui=bold
hi Repeat	ctermfg=lightblue				cterm=bold	guifg=lightblue	guibg=white	gui=bold
hi Statement	ctermfg=lightblue				cterm=bold	guifg=lightblue	guibg=white	gui=bold
hi Structure	ctermfg=lightblue				cterm=bold	guifg=lightblue	guibg=white	gui=bold
hi PreProc	ctermfg=lightblue				cterm=bold	guifg=lightblue	guibg=white	gui=bold
hi Type		ctermfg=lightblue				cterm=bold	guifg=lightblue	guibg=white	gui=bold
hi Include	ctermfg=lightblue				cterm=bold	guifg=lightblue	guibg=white	gui=bold

hi Error	ctermfg=yellow		ctermbg=red			guifg=yellow	guibg=red
hi Todo		ctermfg=black		ctermbg=yellow			guifg=black	guibg=yellow
hi Search	ctermfg=yellow		ctermbg=red			guifg=yellow	guibg=red
