syntax on

let &titlestring ='VIM MODE:%{mode()} - (%f) %t'
set titleold =
set title 
set number                     " Show current line number
set relativenumber             " Show relative line numbers

set nohlsearch
set hidden
set noerrorbells
set shiftwidth=4
set expandtab
set smartindent

set nowrap
set smartcase
set noswapfile
set nobackup
set undodir=~/.vim/undodir
set undofile
set incsearch
set termguicolors
set scrolloff=8
set noshowmode

set colorcolumn=80
highlight ColorColumn ctermbg=0 guibg=lightgrey

let mapleader = " "
if has('python3')
endif
call plug#begin('~/.vim/plugged')
Plug 'jremmen/vim-ripgrep'
Plug 'https://github.com/ctrlpvim/ctrlp.vim.git'

Plug 'mbbill/undotree'

call plug#end()
if executable('rg')
    let g:rg_derive_root='true'
endif

let g:ctrlp_user_command = ['.git/']
let g:netrw_browse_split = 2
let g:netrw_banner = 0
let g:netrw_winsize = 25

nnoremap <leader>h :wincmd h<CR>
nnoremap <leader>j :wincmd j<CR>
nnoremap <leader>k :wincmd k<CR>
nnoremap <leader>l :wincmd l<CR>
nnoremap <leader>u :UndotreeShow<CR>
nnoremap <leader>pv :wincmd v<bar> :Ex <bar> :vertical resize 30<CR>
nnoremap <Leader>ps :Rg<SPACE>
