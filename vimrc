set nocompatible
set t_Co=256
" colors xoria256

set number
set tabstop=4
set shiftwidth=4
set expandtab
set nocindent
set autoindent

set scrolloff=3
" set sidescroll=15
set sidescroll=1

set wildmenu
set showcmd

set wrap
set linebreak

" highlights all that matches
set hlsearch                
set incsearch
set ignorecase

set ttyfast
" nnoremap <silent> <Space>nohlsearch<Bar>echo<CR>
" useful for long wrapped lines
" nnoremap k gk               
" nnoremap j gj

" allows sane copy and paste behavior
set clipboard=unnamed

" double slash (//) handles name collision
set backupdir=~/.vim/backup//
set directory=~/.vim/swap//

" setup undo
set undofile                " save undo's after file closes
set undodir=~/.vim/undo//   
set undolevels=1000         " how many undo to store
set undoreload=10000        " number of lines to save for undo

" shows filename
set laststatus=2
set statusline=%F           " shows full path

set cursorline
set mouse=a
set noerrorbells

set ruler
set title


filetype indent plugin on
syntax enable

call plug#begin('~/.vim/plugged')
Plug 'vim-latex/vim-latex'
Plug 'kien/ctrlp.vim'
call plug#end()

