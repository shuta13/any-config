syntax enable

set fenc =utf-8

set enc=utf-8

set number

set noswapfile

inoremap <silent> jj <ESC>

"inoremap <silent> :: <ESC>

inoremap <silent> :q1 <:q!>

set autoindent

set smartindent

set nowrap

set nobackup

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

" setup dein
" @see https://github.com/Shougo/dein.vim
if &compatible
  set nocompatible " Be iMproved
endif

" Required:
" Add the dein installation directory into runtimepath
set runtimepath+=~/.cache/dein/repos/github.com/Shougo/dein.vim

" Required:
call dein#begin('~/.cache/dein')

" Let dein manage dein
call dein#add('~/.cache/dein')
if !has('nvim')
  call dein#add('roxma/nvim-yarp')
  call dein#add('roxma/vim-hug-neovim-rpc')
  call dein#add('cocopon/iceberg.vim')
  call dein#add('preservim/nerdtree')
endif

" Add or remove your plugins here like this:
"call dein#add('Shougo/neosnippet.vim')
"call dein#add('Shougo/neosnippet-snippets')

" Required:
call dein#end()

" Required:
filetype plugin indent on
syntax enable

" If you want to install not installed plugins on startup.
if dein#check_install()
 call dein#install()
endif

" nerdtree
autocmd VimEnter * execute 'NERDTree'

" iceberg
:colorscheme iceberg
set background=dark