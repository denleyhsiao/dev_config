set nocompatible  " 不与Vi兼容（采用Vim自己的操作命令）
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

syntax on
filetype plugin indent on

let mapleader="\<space>"
nnoremap <leader>ev :vsplit $MYVIMRC<cr>
autocmd BufWritePost $MYVIMRC source $MYVIMRC

call plug#begin('~/.vim/bundle')
Plug 'liuchengxu/eleline.vim'
" Optional. If you use vim-fugitive and want a callback from it to update eleline.
" autocmd User FugitiveChanged if exists("b:eleline_branch") | unlet b:eleline_branch | endif

Plug 'preservim/nerdtree'
  \ | Plug 'Xuyuanp/nerdtree-git-plugin'
  \ | Plug 'ryanoasis/vim-devicons'
  \ | Plug 'tiagofumo/vim-nerdtree-syntax-highlight'

Plug 'scrooloose/nerdcommenter'

Plug 'Yggdroot/indentLine'

Plug 'octol/vim-cpp-enhanced-highlight'
call plug#end()

"-------Settings for NERDTree--------
nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>
autocmd StdinReadPre * let s:std_in=1

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

"-------Settings for nerdtree-syntax-highlight ---
let g:WebDevIconsDisableDefaultFolderSymbolColorFromNERDTreeDir = 1
let g:WebDevIconsDisableDefaultFileSymbolColorFromNERDTreeFile = 1
" not to show brackets around flags
let g:webdevicons_conceal_nerdtree_brackets = 1
" enable folder/directory glyph flag (disabled by default with 0)
let g:WebDevIconsUnicodeDecorateFolderNodes = 1
" enable open and close folder/directory glyph flags (disabled by default with 0)
let g:DevIconsEnableFoldersOpenClose = 1

" use double-width(1) or single-width(0) glyphs
" only manipulates padding, has no effect on terminal or set(guifont) font
let g:WebDevIconsUnicodeGlyphDoubleWidth = 0
" Force extra padding in NERDTree so that the filetype icons line up vertically
let g:WebDevIconsNerdTreeGitPluginForceVAlign = 1

"Highlight full name (not only icons). You need to add this if you don't have vim-devicons and want highlight.
let g:NERDTreeFileExtensionHighlightFullName = 1
let g:NERDTreeExactMatchHighlightFullName = 1
let g:NERDTreePatternMatchHighlightFullName = 1

"Highlight full name (not only icons). You need to add this if you don't have vim-devicons and want highlight.
let g:NERDTreeHighlightFolders = 1

"highlights the folder name
let g:NERDTreeHighlightFoldersFullName = 1

"you can add these colors to your .vimrc to help customizing
let s:brown = "905532"
let s:aqua =  "3AFFDB"
let s:blue = "689FB6"
let s:darkBlue = "44788E"
let s:purple = "834F79"
let s:lightPurple = "834F79"
let s:red = "AE403F"
let s:beige = "F5C06F"
let s:yellow = "F09F17"
let s:orange = "D4843E"
let s:darkOrange = "F16529"
let s:pink = "CB6F6F"
let s:salmon = "EE6E73"
let s:green = "8FAA54"
let s:Turquoise = "40E0D0"
let s:lightGreen = "31B53E"
let s:white = "FFFFFF"
let s:rspec_red = "FE405F"
let s:git_orange = "F54D27"
let s:gray = "808A87"

let g:NERDTreeExtensionHighlightColor = {} " this line is needed to avoid error
let g:NERDTreeExtensionHighlightColor['py'] = s:orange " sets the color of py files to orange
let g:NERDTreeExtensionHighlightColor['tex'] = s:yellow " sets the color of tex files to yellow
let g:NERDTreeExtensionHighlightColor['c'] = s:green " sets the color of c files to green
let g:NERDTreeExtensionHighlightColor['pdf'] = s:beige " sets the color of pdf files to beige
let g:NERDTreeExtensionHighlightColor['c++'] = s:green " sets the color of c++ files to green

"-------Settings for nerdcommenter ---
" Add a space before comments
let g:NERDSpaceDelims=1

"-------Settings for the indentline ---
let g:indentLine_char='|'
let g:indentLine_enabled=1

"-------Settings for the vim-cpp-enhanced-highlight ---
let g:cpp_class_scope_highlight = 1
let g:cpp_member_variable_highlight = 1
let g:cpp_class_decl_highlight = 1
let g:cpp_posix_standard = 1
let g:cpp_experimental_simple_template_highlight = 1
let g:cpp_experimental_template_highlight = 1
let g:cpp_concepts_highlight = 1
let g:cpp_no_function_highlight = 1

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

func SetFileTitle_markdown()
  let infor = "---\n"
    \."layout: post\n"
    \."title: \n"
    \."date: ".strftime("%Y-%m-%d %H:%M")." \n"
    \."categories:\n"
    \."  - \n"
    \."---\n"
    \."\n"
    silent put! = infor
endfunc
autocmd bufnewfile *.md call SetFileTitle_markdown()
