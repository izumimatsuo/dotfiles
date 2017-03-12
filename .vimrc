if has("vim_starting")
  set nocompatible
  set runtimepath^=~/.vim
endif

call plug#begin('~/.vim/plugins')
Plug 'aklt/plantuml-syntax'
Plug 'plasticboy/vim-markdown'
Plug 'kannokanno/previm'
Plug 'tyru/open-browser.vim'
Plug 'thinca/vim-quickrun'
Plug 'artur-shaik/vim-javacomplete2'
Plug 'kien/ctrlp.vim'
call plug#end()

filetype plugin indent on

syntax on

"set nowrap

set encoding=utf-8

set hlsearch
set ignorecase
set smartcase

set autoindent

set ruler
set number
set list
set wildmenu
set showcmd

set shiftwidth=4
set softtabstop=4
set expandtab
set tabstop=4
set smarttab

if exists('&ambiwidth')
	set ambiwidth=double
endif

set clipboard=unnamed

let mapleader = "\<Space>"
nnoremap <Leader>o :CtrlP<CR>
nnoremap <Leader>w :w<CR>

inoremap <C-j> <Down>
inoremap <C-k> <Up>
inoremap <C-h> <Left>
inoremap <C-l> <Right>
inoremap <C-d> <Delete>

set backupdir=~/.vim/tmp
set noundofile

" Shell
if has('win32')
    set shellslash
    set shell=busybox\ sh
    let $ENV=$HOME . '.shinit'
endif

" Netrw
let g:netrw_liststyle = 3
let g:netrw_altv = 1
let g:netrw_alto = 1

" Markdown
let g:vim_markdown_folding_disabled=1
au BufRead,BufNewFile *.md set filetype=markdown
let g:previm_show_header = 0
"let g:previm_custom_css_path = '~/workspace/tmp/mycss.css'

" Java Complete
autocmd FileType java :setlocal omnifunc=javacomplete#Complete
nmap <leader>jI <Plug>(JavaComplete-Imports-AddMissing)
nmap <leader>jR <Plug>(JavaComplete-Imports-RemoveUnused)
nmap <leader>ji <Plug>(JavaComplete-Imports-AddSmart)
nmap <leader>jii <Plug>(JavaComplete-Imports-Add)
nmap <Leader>jis <Plug>(JavaComplete-Imports-SortImports)

