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

call plug#end()

colorscheme fogbell

let g:airline_theme='minimalist'
