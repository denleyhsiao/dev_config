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
set ignorecase
set smartcase
set hlsearch
set showmatch

syntax on
filetype plugin indent on

let g:mapleader="\<space>"
let g:maplocalleader=","
nnoremap <leader>ev :vsplit $MYVIMRC<cr>
autocmd BufWritePost $MYVIMRC source $MYVIMRC

call plug#begin('~/.vim/bundle')
  Plug 'scrooloose/nerdcommenter'
  Plug 'preservim/nerdtree'
    \ | Plug 'Xuyuanp/nerdtree-git-plugin'
    \ | Plug 'ryanoasis/vim-devicons'
    \ | Plug 'tiagofumo/vim-nerdtree-syntax-highlight'

  Plug 'ycm-core/YouCompleteMe', { 'do': './install.py' }
  Plug 'liuchengxu/eleline.vim'
  " " Optional. If you use vim-fugitive and want a callback from it to update eleline.
  " " autocmd User FugitiveChanged if exists("b:eleline_branch") | unlet b:eleline_branch | endif
  Plug 'Yggdroot/indentLine'
  Plug 'octol/vim-cpp-enhanced-highlight'
  Plug 'SirVer/ultisnips'
  Plug 'denley-vendor/vim-snippets'
  Plug 'vim-scripts/a.vim'
  Plug 'yegappan/taglist'
  Plug 'mbbill/echofunc'
  Plug 'plasticboy/vim-markdown'
  Plug 'iamcco/mathjax-support-for-mkdp'
  Plug 'iamcco/markdown-preview.vim'
  Plug 'liuchengxu/vim-which-key'
  Plug 'tpope/vim-obsession'
  Plug 'cdelledonne/vim-cmake'
  Plug 'Yohannfra/Vim-Goto-Header'
call plug#end()

"-------Settings for nerdcommenter ---
" Add a space before comments
let g:NERDSpaceDelims=1

"------Settings for NERDTree--------
nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-o> :NERDTreeToggle<CR>
nnoremap <C-i> :NERDTreeFind<CR>

" Start NERDTree when Vim is started without file arguments.
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists('s:std_in') | NERDTree | endif

" Close vim when the NERDTree is the only window
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
let NERDTreeIgnore=['\.pyc','\~$','\.swp','\.dsp','\.dsw','\.mak','\.rc']
let g:NERDTreeShowLineNumbers=1
let g:NERDTreeFileLines=1

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

"-------Settings for the indentline ---
let g:pp_simple_highlight=1
let g:indentLine_char='|'
let g:indentLine_enabled=1

"-------Settings for the vim-cpp-enhanced-highlight ---
let g:cpp_class_scope_highlight = 1
let g:cpp_member_variable_highlight = 1
let g:cpp_class_decl_highlight = 1
let g:cpp_posix_standard = 1
let g:cpp_experimental_template_highlight = 1
let g:cpp_concepts_highlight = 1
let g:cpp_no_function_highlight = 1

"-------Settings for the taglist ---------
set tags+=~/.vim/tags/usr_include_tags
let Tlist_Ctags_Cmd='ctags'
let Tlist_Use_Right_Window=1
let Tlist_Show_One_File=1
let Tlist_File_Fold_Auto_Close=1
let Tlist_GainFocus_On_ToggleOpen =1
let Tlist_Exit_OnlyWindow=1
let Tlist_Process_File_Always=1
let Tlist_Inc_Winwidth=0
nmap <leader>tl :Tlist<CR>let Tlist_Ctags_Cmd='ctags'

"-------Settings for vim-markdown ---------
autocmd BufNewFile,BufReadPost *.md set filetype=markdown
let g:vimmarkdownfoldingdisabled=1
let g:vimmarkdownnodefaultkeymappings=1
let g:vimmarkdownmath=1
let g:vimmarkdownfrontmatter=1

" ------Settings for markdown-preview ---------
" 设置启动chrome浏览器的命令
let g:mkdp_path_to_chrome = "open -a Google\\ Chrome"
" 设置为1则打开markdown文件时自动打开浏览器
let g:mkdp_auto_start = 1
" 设置为1则在编辑markdown的时候预览窗口是否打开，未开则自动打开
let g:mkdp_auto_open = 1
" 切换buffer时自动关闭预览窗口，设置为0则在切换buffer时不自动关闭
let g:mkdp_auto_close = 1
" 设置为1则只有在保存文件或退出插入模式时更新预览，默认为0，实时更新预览
let g:mkdp_refresh_slow = 0
" 设置为1则所有文件都使用MarkdownPreview进行预览，默认只有markdown文件可以
let g:mkdp_command_for_global = 0
let g:mkdp_path_to_chrome = "open -a Google\\ Chrome"

" for normal mode
nmap <silent> <F8> <Plug>MarkdownPreview
" for insert mode
imap <silent> <F8> <Plug>MarkdownPreview
" for normal mode
nmap <silent> <F9> <Plug>StopMarkdownPreview
" for insert mode
imap <silent> <F9> <Plug>StopMarkdownPreview

"-------Setting for the vim-which-key -------
nnoremap <silent> <leader> :WhichKey '<Space>'<CR>
nnoremap <silent> <localleader> :WhichKey ','<CR>

"-------Setting for the vim-Goto-Header -------
let g:goto_header_includes_dirs = [".", "/usr/include", "..", "~"]
let g:goto_header_search_flags = "-t f -s"
let g:goto_header_excludes_dirs = []
let g:goto_header_open_in_new_tab = 0
let g:goto_header_use_shorter_path = 0
nnoremap <F12> :GotoHeader <CR>
imap <F12> <Esc>:GotoHeader <CR>
nnoremap gh :GotoHeaderSwitch <CR>

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
