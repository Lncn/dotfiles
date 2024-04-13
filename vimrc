" Enable pathogen plugin manager
" This allows you to install plugins into their own private directory in ~/.vim/bundle
" https://github.com/tpope/vim-pathogen
execute pathogen#infect()

syntax on

" Enable smart indentation by file type
filetype plugin indent on

colorscheme jellybeans

" Lightline pluging options
let g:lightline = {
    \ 'colorscheme': 'jellybeans',
    \ }

set cscopetag
set nocompatible ruler laststatus=2 showcmd showmode number
set incsearch ignorecase smartcase hlsearch
set noswapfile
set nobackup
set nowrap
set hidden
set bs=indent,eol,start " allow backspacing over anything

set tags=tags;
set tabstop=4
set shiftwidth=4
set expandtab
if has("autocmd")
  autocmd BufEnter *.[ch] set cindent
  autocmd BufEnter *.[^ch] set autoindent
endif
