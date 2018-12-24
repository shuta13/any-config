set fenc =utf-8

set enc=utf-8

set number

set noswapfile

:colorscheme molokai

inoremap <silent> jj <ESC>

"inoremap <silent> :: <ESC>

inoremap <silent> :q1 <:q!>

set autoindent

set smartindent

set nowrap


set backupdir=$HOME/vimbackup

set nocompatible

set expandtab

set tabstop=2

set shiftwidth=2

set hidden

set nowrap

set incsearch

set number

set showmatch

set smarttab

set listchars=tab:»-,trail:-,eol:↲,extends:»,precedes:«,nbsp:%

set whichwrap=b,s,<,>,[,]

set directory=~/.vim/tmp

au BufNewFile,BufRead *.pde setf processing
au BufNewFile,BufRead *.vue setlocal filetype=vue.html.javascript.css

if has('mouse')
set mouse=a
endif

