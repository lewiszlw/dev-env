" Enable filetype plugins
filetype plugin on
filetype indent on

" Set to auto read when a file is changed from the outside
set autoread
"Always show current position
set ruler
" line number
set number
" Add a bit extra margin to the left
set foldcolumn=0
" Highlight search results
set hlsearch
" Makes search act like search in modern browsers
set incsearch
" gular expressions turn magic on
set magic
" No annoying sound on errors
set noerrorbells
set novisualbell
set t_vb=
set tm=500
" Enable syntax highlighting
syntax enable
" scheme
set background=dark
colorscheme solarized
" Set utf8 as standard encoding and en_US as the standard language
set encoding=utf8
" Use Unix as the standard file type
set ffs=unix,dos,mac
" Turn backup off, since most stuff is in SVN, git et.c anyway...
set nobackup
set nowb
set noswapfile
" Use spaces instead of tabs
set expandtab
" Be smart when using tabs ;)
set smarttab
" 1 tab == 4 spaces
set shiftwidth=4
set tabstop=4

set ai "Auto indent
set si "Smart indent
set wrap "Wrap lines

" Leader
let mapleader="\<Space>"
nnoremap <Leader>w :w<CR>
nnoremap <Leader>wq :wq<CR>
nnoremap <Leader>q :q<CR>
nnoremap <Leader><Leader>j <ESC>o<ESC>
nnoremap <Leader><Leader>k <ESC>O<ESC>
nnoremap <Leader><Leader>h <ESC>i <ESC>
nnoremap <Leader><Leader>l <ESC>a <ESC>

" buffer快速切换
nnoremap <Leader>1 :1b<CR>
nnoremap <Leader>2 :2b<CR>
nnoremap <Leader>3 :3b<CR>
nnoremap <Leader>4 :4b<CR>
nnoremap <Leader>5 :5b<CR>
nnoremap <Leader>6 :6b<CR>
nnoremap <Leader>7 :7b<CR>
nnoremap <Leader>8 :8b<CR>
nnoremap <Leader>9 :9b<CR>

" ctrl
map <C-h> zH
map <C-l> zL

" Set font according to system
if has("mac") || has("macunix")
    set gfn=IBM\ Plex\ Mono:h14,Hack:h14,Source\ Code\ Pro:h15,Menlo:h15
elseif has("win16") || has("win32")
    set gfn=IBM\ Plex\ Mono:h14,Source\ Code\ Pro:h12,Bitstream\ Vera\ Sans\ Mono:h11
elseif has("gui_gtk2")
    set gfn=IBM\ Plex\ Mono:h14,:Hack\ 14,Source\ Code\ Pro\ 12,Bitstream\ Vera\ Sans\ Mono\ 11
elseif has("linux")
    set gfn=IBM\ Plex\ Mono:h14,:Hack\ 14,Source\ Code\ Pro\ 12,Bitstream\ Vera\ Sans\ Mono\ 11
elseif has("unix")
    set gfn=Monospace\ 11
endif

""""""""""""""""""""""""""""""
" => Python section
""""""""""""""""""""""""""""""
let python_highlight_all = 1
au FileType python syn keyword pythonDecorator True None False self

au BufNewFile,BufRead *.jinja set syntax=htmljinja
au BufNewFile,BufRead *.mako set ft=mako

au FileType python map <buffer> F :set foldmethod=indent<cr>

au FileType python inoremap <buffer> $r return
au FileType python inoremap <buffer> $i import
au FileType python inoremap <buffer> $p print
au FileType python inoremap <buffer> $f # --- <esc>a
au FileType python set cindent
au FileType python set cinkeys-=0#
au FileType python set indentkeys-=0#

"当一行文字很长时取消换行
set nowrap
"在状态栏显示正在输入的命令
set showcmd
"设置搜索时忽略大小写
set ignorecase

" 安装vundle
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" 语法补全
" 安装:python3 install.py --clang-completer --system-libclang --go-completer --java-completer
Plugin 'Valloric/YouCompleteMe'
" 目录树
Plugin 'scrooloose/nerdtree'
" 自动保存
Plugin '907th/vim-auto-save'
" vim中文帮助文档
Plugin 'yianwillis/vimcdoc'
" "、@、ctrl-R时显示剪贴板
Plugin 'junegunn/vim-peekaboo'
" 异步语法检查
Plugin 'w0rp/ale'
" 状态栏
Plugin 'vim-airline/vim-airline'
" vim-airline主题插件
Plugin 'vim-airline/vim-airline-themes'
" 文件结构
Plugin 'majutsushi/tagbar'
" 文件搜索
Plugin 'ctrlpvim/ctrlp.vim'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

" YCM 自动补全配置
let g:ycm_add_preview_to_completeopt = 0
let g:ycm_show_diagnostics_ui = 0
let g:ycm_server_log_level = 'info'
let g:ycm_min_num_identifier_candidate_chars = 2
let g:ycm_collect_identifiers_from_comments_and_strings = 1
let g:ycm_complete_in_strings=1
let g:ycm_key_invoke_completion = '<c-z>'
set completeopt=menu,menuone

let g:ycm_semantic_triggers =  {
           \ 'c,cpp,java,python,go,erlang,perl': ['re!\w{2}'],
           \ 'cs,lua,javascript': ['re!\w{2}'],
           \ }

" 设置NerdTree
map <F3> :NERDTreeMirror<CR>
map <F3> :NERDTreeToggle<CR>

" vim-auto-save
let g:auto_save = 1  " enable AutoSave on Vim startup

"ale
"始终开启标志列
let g:ale_sign_column_always = 1
let g:ale_set_highlights = 0
"自定义error和warning图标
let g:ale_sign_error = '✗'
let g:ale_sign_warning = '⚡'
"在vim自带的状态栏中整合ale
let g:ale_statusline_format = ['✗ %d', '⚡ %d', '✔ OK']
"显示Linter名称,出错或警告等相关信息
let g:ale_echo_msg_error_str = 'E'
let g:ale_echo_msg_warning_str = 'W'
let g:ale_echo_msg_format = '[%linter%] %s [%severity%]'
"设置状态栏显示的内容
set statusline=%F%m%r%h%w\ [FORMAT=%{&ff}]\ [TYPE=%Y]\ [POS=%l,%v][%p%%]\ %{strftime(\"%d/%m/%y\ -\ %H:%M\")}\ %{ALEGetStatusLine()}
" airline显示配置
let s:error_symbol = get(g:, 'airline#extensions#ale#error_symbol', '✗ ')
let s:warning_symbol = get(g:, 'airline#extensions#ale#warning_symbol', '⚡ ')

" vim-ariline
" 显示buffers
let g:airline#extensions#tabline#enabled = 1
" airline主题
let g:airline_theme='solarized'
" buffers formatter
let g:airline#extensions#tabline#formatter = 'default'

" 解决YouCompleteMe python版本错误
let $PATH='$HOME/.cargo/bin:/usr/bin:/usr/local/bin:/bin:/usr/sbin:/sbin'

" TagBar配置
" 需安装ctags: brew install ctags
let g:tagbar_width=35
let g:tagbar_autofocus=1
let g:tagbar_left = 0
nmap <F8> :TagbarToggle<CR>

" ctrlp配置
" 打开ctrlp搜索
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
" 相当于mru功能，show recently opened files
" map <leader>fp :CtrlPMRU<CR>
let g:ctrlp_custom_ignore = {
  \ 'dir':  '\v[\/]\.(git|hg|svn)$',
  \ 'file': '\v\.(exe|so|dll)$',
  \ 'link': 'some_bad_symbolic_links',
  \ }
let g:ctrlp_working_path_mode=0
let g:ctrlp_match_window_bottom=1
let g:ctrlp_max_height=15
let g:ctrlp_match_window_reversed=0
let g:ctrlp_mruf_max=500
let g:ctrlp_follow_symlinks=1
