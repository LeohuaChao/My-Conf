set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
Plugin 'L9'
" Git plugin not hosted on GitHub
"Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
"Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Avoid a name conflict with L9
"Plugin 'user/L9', {'name': 'newL9'}

Plugin 'vim-airline/vim-airline'
Plugin 'wincent/command-t'
Plugin 'davidhalter/jedi-vim'
Plugin 'scrooloose/nerdtree'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just
" :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to
" auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

" --------------以上为Vundle默认推荐置顶的配置-----------------------------------------

" 自动重新加载.vimrc配置文件
autocmd! bufwritepost .vimrc source %

" 复制大块代码进入Vim之前按f2，避免缩进乱套,在状态栏能看到``-- INSERT (paste) --``
set pastetoggle=<F2>

" 设置vim中默认使用选择缓冲区寄存器 "*
set clipboard=unnamed

" 打开鼠标模式，这样在普通模式下可以通过鼠标选择区域复制到选择缓冲区
" 普通模式下使用"*p进行粘贴
set mouse=a

" 在insert模式下用退格键删除
set bs=2

" 显示行号
set number

" 语法高亮
syntax on

" 使用空格，不用TAB
set tabstop=4
set softtabstop=4
set shiftwidth=4
set shiftround
set expandtab

" 始终显示状态栏
set laststatus=2

" vim-airline 的配置
set t_Co=256
:let g:airline_theme='molokai'

"conf for tabs, 为标签页进行的配置，通过ctrl h/l切换标签等
let mapleader = ','
nnoremap <C-l> gt
nnoremap <C-h> gT
nnoremap <leader>t : tabe<CR>

set ignorecase              "检索时忽略大小写
set hls                     "检索时高亮显示匹配项
"set cursorline              "为光标所在行加下划线
set autoread                "文件在Vim之外修改过，自动重新读入

" Config for Plugin:Command-T
:set wildignore+=*.pyc,**/venv/**

" Config for Plugin:Jedi-Vim
let g:jedi#usages_command = "<leader>z"

" Config for Plugin:NerdTree
map <leader>l :NERDTreeToggle<CR>
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") &&b:NERDTreeType == "primary") | q | endif
let NERDTreeIgnore=['^venv$[[dir]]', '\.pyc$']
