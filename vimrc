set nocompatible
set t_Co=256
colors xoria256

set nu
set tabstop=4
set shiftwidth=4
set expandtab
set nocindent
set autoindent
set incsearch

set hlsearch                " highlights all that matches
"nnoremap <silent> <Space>nohlsearch<Bar>echo<CR>
" useful for long wrapped lines
"nnoremap k gk               
"nnoremap j gj

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

filetype indent plugin on
syntax enable
