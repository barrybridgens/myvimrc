" Barry's vimrc

" Turn on syntax highlighting
syntax on

" Show line numbers
set number

" Show file stats
set ruler


" Blink cursor on error instead of beeping (grr)
set visualbell

" Encoding
set encoding=utf-8

" Whitespace
set wrap
set textwidth=79
set formatoptions=tcqrn1
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab
set noshiftround


" Key mapping
map <C-n> :NERDTreeToggle<CR>

let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'


" Look and feel
colorscheme slate
:set guioptions-=T  "remove toolbar

" Plugins - using vim-plug

" Plugins will be downloaded under the specified directory.
call plug#begin('~/.vim/plugged')

" Declare the list of plugins.
" Plug 'tpope/vim-sensible'
" Plug 'junegunn/seoul256.vim'
Plug 'scrooloose/nerdtree'
Plug 'kien/ctrlp.vim'

" List ends here. Plugins become visible to Vim after this call.
call plug#end()


" NERDTree
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif


