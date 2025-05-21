let g:mapleader="\<space>"
let g:maplocalleader=","

nnoremap <leader>ev :vsplit $MYVIMRC<CR>
nnoremap <leader>sv :source $MYVIMRC<CR>
autocmd BufWritePost $MYVIMRC source $MYVIMRC

call plug#begin('~/.vim/bundle')
  Plug 'airblade/vim-rooter'
call plug#end()

set nocompatible 
set number
set ruler
set laststatus=2
set showmode
set showcmd
set mouse=a
set cursorline
set colorcolumn=80
set encoding=utf-8
set autoindent
set tabstop=2
set shiftwidth=2
set expandtab
set softtabstop=2
set ignorecase
set smartcase
set hlsearch
set showmatch

syntax on
filetype plugin indent on

func SetFileTitle_shell()
  let infor = "#!/usr/bin/env bash\n"
    \."# \n"
    \."# @author: denley@justtodo.com \n"
    \."# @date: ".strftime("%Y-%m-%d %H:%M")." \n"
    \."# @description: \n"
    \."\n"
    \."\n"
    \."WORK_PATH=$(cd $(dirname $0); pwd)"
    silent  put! =infor
endfunc
autocmd bufnewfile *.sh call SetFileTitle_shell()
