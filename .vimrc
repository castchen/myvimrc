set nocompatible
syntax on
set number
set expandtab
set tabstop=4
set shiftwidth=4
set incsearch
set hlsearch
set t_Co=256
colorscheme desert
:hi Search term=reverse ctermfg=12 ctermbg=0 guifg=wheat guibg=peru
nmap <F7> <C-w>w

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
" Plugin 'tpope/vim-fugitive'
Plugin 'Valloric/YouCompleteMe'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'scrooloose/nerdtree'
Plugin 'octol/vim-cpp-enhanced-highlight'
Plugin 'vim-scripts/a.vim'

" plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'

" Git plugin not hosted on GitHub
" Plugin 'git://git.wincent.com/command-t.git'

" git repos on your local machine (i.e. when working on your own plugin)
" Plugin 'file:///home/gmarik/path/to/plugin'

" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
" Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}

" Install L9 and avoid a Naming conflict if you've already installed a
" different version somewhere else.
" Plugin 'ascenator/L9', {'name': 'newL9'}

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just:PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line
"

"-----------------start air-line---------------------
let g:airline#extensions#tabline#enabled = 1
set laststatus=2
"-----------------end air-line-----------------------

"------------------ycm------------------------------
nnoremap <F5> :YcmCompleter GoToDeclaration<CR>
nnoremap <F6> :YcmCompleter GoToDefinition <CR>
let g:ycm_confirm_extra_conf=0
let g:ycm_global_ycm_extra_conf='~/.ycm_extra_conf.py'
let g:ycm_enable_diagnostic_highlighting = 0

"-----------------NerdTree-------------------------
map <F4> :NERDTreeToggle<CR>

"----------------vim-highlight--------------------
let g:cpp_class_scope_highlight = 1
let g:cpp_experimental_template_highlight = 1

"---------------cscope--------------------------
nmap <C-@>s :cs find s <C-R>=expand("<cword>")<CR><CR>:copen<CR>   " 0 或 s: 查找本 C 符号
nmap <C-@>g :cs find g <C-R>=expand("<cword>")<CR><CR>             " 1 或 g: 查找本定义
nmap <F3> :cs find c <C-R>=expand("<cword>")<CR><CR>:copen<CR>     " 3 或 c: 查找调用本函数的函数
nmap <F2> :cs find t <C-R>=expand("<cword>")<CR><CR>:copen<CR>     " 4 或 t: 查找本字符串
nmap <C-@>e :cs find e <C-R>=expand("<cword>")<CR><CR>:copen<CR>   " 6 或 e: 查找本 egrep 模式
nmap <C-@>f :cs find f <C-R>=expand("<cfile>")<CR><CR>:copen<CR>   " 7 或 f: 查找本文件
nmap <C-@>i :cs find i ^<C-R>=expand("<cfile>")<CR>$<CR>:copen<CR> " 8 或 i: 查找包含本文件的文件
nmap <C-@>d :cs find d <C-R>=expand("<cword>")<CR><CR>:copen<CR>   " 2 或 d: 查找本函数调用的函数

set cscopequickfix=s-,c-,d-,i-,t-,e-
set csto=0
set cst
set csverb

"-----------------a.vim---------------------
nmap <F9> :A<CR>
