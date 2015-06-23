set nocompatible
set t_Co=256
" colors xoria256

set nu
set tabstop=4
set shiftwidth=4
set expandtab
set nocindent
set autoindent
set incsearch

set clipboard=unnamed

" double slash (//) handles name collision
set backupdir=~/.vim/backup//
set directory=~/.vim/swap//

set undofile                " save undo's after file closes
set undodir=~/.vim/undo//   
set undolevels=1000         " how many undo to store
set undoreload=10000        " number of lines to save for undo

filetype indent plugin on
syntax enable
