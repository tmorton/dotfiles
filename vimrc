set number 

" Navigate splits without C-w
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

inoremap jk <esc>

set splitbelow
set splitright

call plug#begin()
Plug 'tpope/vim-sensible'
call plug#end()
