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

Plug 'preservim/nerdtree'
  \ | Plug 'Xuyuanp/nerdtree-git-plugin'
  \ | Plug 'ryanoasis/vim-devicons'
call plug#end()

"-------Settings for NERDTree--------
nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
autocmd vimenter * NERDTree
"Close vim when the NERDTree is the only window
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
let NERDTreeIgnore=['\.pyc','\~$','\.swp']
let g:NERDTreeShowLineNumbers=1

"-------Settings for NERDTree-git ---
let g:NERDTreeGitStatusIndicatorMapCustom = {
  \ 'Modified'  :'✹',
  \ 'Staged'    :'✚',
  \ 'Untracked' :'✭',
  \ 'Renamed'   :'➜',
  \ 'Unmerged'  :'═',
  \ 'Deleted'   :'✖',
  \ 'Dirty'     :'✗',
  \ 'Ignored'   :'☒',
  \ 'Clean'     :'✔︎',
  \ 'Unknown'   :'?',
  \ }

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
