"----------special windows----------
set backspace=indent,eol,start
"-----------------------------------

set nocompatible
set encoding=utf-8
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
