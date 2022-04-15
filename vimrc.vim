set nocompatible  " 不与Vi兼容（采用Vim自己的操作命令）
set number
set laststatus=2

let mapleader="\<space>"
nnoremap <leader>ev :vsplit $MYVIMRC<cr>
nnoremap <leader>sv :source $MYVIMRC<cr>

call plug#begin('~/.vim/bundle')
Plug 'liuchengxu/eleline.vim'
" Optional. If you use vim-fugitive and want a callback from it to update eleline.
" autocmd User FugitiveChanged if exists("b:eleline_branch") | unlet b:eleline_branch | endif
call plug#end()

func SetFileTitle_shell()
  let infor = "#!/usr/bin/env bash\n"
    \."# \n"
    \."# @author: denley@justtodo.com \n"
    \."# @date: ".strftime("%Y-%m-%d %H:%M")." \n"
    \."# @description: \n"
    \."\n"
    \."\n"
    silent  put! =infor
endfunc
autocmd bufnewfile *.sh call SetFileTitle_shell()

func SetFileTitle_python()
  let infor = "#!/usr/bin/env python\n"
    \."# -*- coding: utf-8 -*-\n"
    \."# \n"
    \."# @author: denley@justtodo.com \n"
    \."# @date: ".strftime("%Y-%m-%d %H:%M")." \n"
    \."# @description: \n"
    \."\n"
    \."\n"
    silent  put! =infor
endfunc
autocmd bufnewfile *.py call SetFileTitle_python()
