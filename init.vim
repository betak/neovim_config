" Install vim-plug
"curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs \
"    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
call plug#begin('~/.config/nvim/plugged')

" NeoFormat
Plug 'sbdchd/neoformat'
" coc, Use release branch (Recommend)
" node.js is required.  I prefer to use NVM https://github.com/nvm-sh/nvm
Plug 'neoclide/coc.nvim', {'branch': 'release'}
" nvim-gdb
Plug 'sakhnik/nvim-gdb', { 'do': ':!./install.sh \| UpdateRemotePlugins' }
" vim-airline status line
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
" fugitive
Plug 'tpope/vim-fugitive'
" nerdtree
Plug 'scrooloose/nerdtree'
" default nvim settings
Plug 'liuchengxu/vim-better-default'
" cscope
Plug 'joe-skb7/cscope-maps'
" ctags sidebar
Plug 'majutsushi/tagbar'

call plug#end()

colorscheme simpleblue

" vim-better-default parameters and default values
" vim_better_default_minimum              Only add essential funationalities 0
" vim_better_default_backup_on            Set backup                         0
" vim_better_default_persistent_undo      Persistent undo                    0
" vim_better_default_enable_folding       Enable fold                        1
" vim_better_default_key_mapping          Whole key (re)mappings             1
" vim_better_default_basic_key_mapping    Basic key (re)mappings             1
" vim_better_default_buffer_key_mapping   Buffer key mappings                1
" vim_better_default_file_key_mapping     File key mappings                  1
" vim_better_default_fold_key_mapping     Fold key mappings                  1
" vim_better_default_window_key_mapping   Window key mappings                1
"
" override default setting
" runtime! plugin/default.vim
" set norelativenumber
"
" I hate folding
let g:vim_better_default_enable_folding=0

" status bar theme
let g:airline_theme='minimalist'

" misc. settings
set mouse=a                                      " use 'normal' mouse mode

" cscope bindings
nnoremap <leader>fa :call CscopeFindInteractive(expand('<cword>'))<CR>
nnoremap <leader>l :call ToggleLocationList()<CR>
" s: Find this C symbol
nnoremap  <leader>fs :call CscopeFind('s', expand('<cword>'))<CR>
" g: Find this definition
nnoremap  <leader>fg :call CscopeFind('g', expand('<cword>'))<CR>
" d: Find functions called by this function
nnoremap  <leader>fd :call CscopeFind('d', expand('<cword>'))<CR>
" c: Find functions calling this function
nnoremap  <leader>fc :call CscopeFind('c', expand('<cword>'))<CR>
" t: Find this text string
nnoremap  <leader>ft :call CscopeFind('t', expand('<cword>'))<CR>
" e: Find this egrep pattern
nnoremap  <leader>fe :call CscopeFind('e', expand('<cword>'))<CR>
" f: Find this file
nnoremap  <leader>ff :call CscopeFind('f', expand('<cword>'))<CR>
" i: Find files #including this file
nnoremap  <leader>fi :call CscopeFind('i', expand('<cword>'))<CR>

"
if has("autocmd")
  " ----------  qmake : set filetype for *.pro  ----------
  autocmd BufNewFile,BufRead *.pro  set filetype=qmake

  autocmd filetype c,cpp,h so $HOME/.config/nvim/indent/work.vim
  autocmd filetype c,cpp,h set cindent

  autocmd filetype python so $HOME/.config/nvim/indent/python.vim
  autocmd filetype python set cindent

  autocmd bufenter,bufnew  *.diff so $HOME/.config/nvim/indent/work.vim

  autocmd bufread,bufnew *.bsg setfiletype xml
  autocmd bufread,bufnew *.bsg so $HOME/.config/nvim/indent/work.vim
endif " has("autocmd")
