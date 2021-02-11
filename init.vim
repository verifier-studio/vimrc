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

call plug#begin('~/.config/nvim/plugged')
Plug 'scrooloose/nerdtree'
Plug 'skywind3000/vim-terminal-help'
Plug 'joshdick/onedark.vim'
call plug#end()

nnoremap <F2> :NERDTreeToggle<CR>
let NERDTreeShowBookmarks=1
let NERDTreeShowHidden=1

syntax on
syntax enable
set t_Co=256
colorscheme onedark
