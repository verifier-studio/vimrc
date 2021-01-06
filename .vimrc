if has('gui_running') 
set guioptions-=m
set guioptions-=T
set guioptions-=r
set guioptions-=L
set guioptions-=b
set showtabline=0

map <F11> <Esc>:call libcallnr('gvimfullscreen.dll', 'ToggleFullScreen', 0)<CR>
endif

call plug#begin('~/.vim/plugged')
Plug 'scrooloose/nerdtree'
Plug 'mattn/emmet-vim'
Plug 'rust-lang/rust.vim'
call plug#end()

"" NERDTree config
" map Ctrl + b to open NERDTree
map <F2> :NERDTreeToggle<CR>
let NERDTreeShowBookmarks=1
cd E:\workspace

map <F3> :ter<CR>

" 内置终端模式切换
tnoremap <c-N> <c-\><c-n>

" row number
set number

" theme
syntax on
syntax enable
set t_Co=256
colorscheme murphy

" for rust
filetype plugin indent on

set autochdir

set nowrap
set backspace=indent,eol,start
set shiftwidth=4

set hlsearch

set fileencodings=utf-8,ucs-bom,gb18030,gbk,gb2312,cp936
set termencoding=utf-8
set encoding=utf-8

" insert mode shortcut
inoremap <C-h> <Left>
inoremap <C-j> <Down>
inoremap <C-k> <Up>
inoremap <C-l> <Right>
inoremap <C-d> <DELETE>

" tab 4 space
set smarttab
set tabstop=4
set shiftwidth=4
set expandtab
set autoindent

let NERDTreeShowHidden=1