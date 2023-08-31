" 关闭vi兼容
set nocompatible

" 默认进入目录
cd ~/workspace

" 插入模式光标移动配置
inoremap <C-h> <Left>
inoremap <C-j> <Down>
inoremap <C-k> <Up>
inoremap <C-l> <Right>
inoremap <C-d> <DELETE>

" 搜索高亮显示
set hlsearch

" 显示行号
set number

" 根据打开文件切换对应路径
set autochdir

" 设置禁用错误提示音
set belloff=all

" 设置tab空格数
set nowrap
set backspace=indent,eol,start
set shiftwidth=4

" tab字符替换成4个空格
set expandtab
set tabstop=4

" 自动缩进
set smarttab
set autoindent
set smartindent

set clipboard+=unnamed

let g:plug_url_format='git@github.com:%s.git'
call plug#begin('~/.config/nvim/plugged')
Plug 'scrooloose/nerdtree'
Plug 'skywind3000/vim-terminal-help'
Plug 'joshdick/onedark.vim'
Plug 'vim-airline/vim-airline'
call plug#end()

nnoremap <F2> :NERDTreeToggle<CR>
let NERDTreeShowBookmarks=1
let NERDTreeShowHidden=1

syntax on
syntax enable
set t_Co=256
colorscheme onedark

" airline配置
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#buffer_nr_show = 1
let g:airline#extensions#tabline#formatter = 'unique_tail'
let g:airline_section_z=''           " 隐藏倒数第二行显示的内容
let g:airline_section_error=''       " 隐藏倒数第一行显示的内容
let g:airline_section_warning=''     " 隐藏倒数第一行显示的内容
let g:airline_symbols_ascii = 1      " 隐藏图标

" 切换buffer快捷键
" nnoremap <tab> :bn<CR> " 下一个
" nnoremap <s-tab> :bp<CR> " 上一个
nnoremap <C-C> :bd<CR> " 关闭当前
" 切换buffer快捷键（airline提供的方法，可以忽略内置terminal）
nmap <s-tab> <Plug>AirlineSelectPrevTab
nmap <tab> <Plug>AirlineSelectNextTab

" 设置字体
set guifont=Consolas:h11