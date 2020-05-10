" hello
hi clear
set background=dark
if exists("syntax_on")
  syntax reset
endif
let g:colors_name = "travis"

hi Normal						cterm=none	guifg=white	guibg=black	gui=none	term=none
hi Comment	ctermfg=green				cterm=none	guifg=green	guibg=black	gui=none	term=none
hi Constant	ctermfg=white				cterm=none	guifg=white	guibg=black	gui=none	term=none
hi Identifier	ctermfg=white				cterm=none	guifg=white	guibg=black	gui=none	term=none
hi Special	ctermfg=white				cterm=none	guifg=white	guibg=black	gui=none	term=none
hi SpecialKey	ctermfg=cyan				cterm=none	guifg=blue	guibg=black	gui=none	term=none
hi Label	ctermfg=cyan				cterm=none	guifg=blue	guibg=black	gui=none	term=none
hi Conditional	ctermfg=cyan				cterm=none	guifg=blue	guibg=black	gui=none	term=none
hi Repeat	ctermfg=cyan				cterm=none	guifg=blue	guibg=black	gui=none	term=none
hi Statement	ctermfg=cyan				cterm=none	guifg=blue	guibg=black	gui=none	term=none
hi Structure	ctermfg=cyan				cterm=none	guifg=blue	guibg=black	gui=none	term=none
hi PreProc	ctermfg=cyan				cterm=none	guifg=blue	guibg=black	gui=none	term=none
hi Type		ctermfg=cyan				cterm=none	guifg=blue	guibg=black	gui=none	term=none
hi Include	ctermfg=cyan				cterm=none	guifg=blue	guibg=black	gui=none	term=none

hi Error	ctermfg=yellow		ctermbg=red	cterm=none	guifg=yellow	guibg=red	gui=none	term=none
hi Todo		ctermfg=black		ctermbg=yellow	cterm=none	guifg=black	guibg=yellow	gui=none	term=none
hi Search	ctermfg=yellow		ctermbg=red	cterm=none	guifg=yellow	guibg=red	gui=none	term=none
