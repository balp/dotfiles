set nocompatible               " be iMproved
filetype off                   " required!

set rtp+=~/.vim/bundle/Vundle.vim/
call vundle#begin()

" let Vundle manage Vundle
" required! 
Plugin 'gmarik/Vundle.git'

" My Bundles here:
"
" original repos on github
Plugin 'tpope/vim-fugitive'
Plugin 'Lokaltog/vim-easymotion'
Plugin 'bling/vim-airline'
Plugin 'molokai'
" vim-scripts repos
Plugin 'L9'
Plugin 'FuzzyFinder'
Plugin 'jnwhiteh/vim-golang'
Plugin 'msanders/snipmate.vim'
Plugin 'mfukar/robotframework-vim'
Plugin 'tpope/vim-eunuch'
Plugin 'fatih/vim-go'
" non github repos
" Bundle 'git://git.wincent.com/command-t.git'
" ...
" Track the engine.
Plugin 'SirVer/ultisnips'

" Snippets are separated from the engine. Add this if you want them:
Plugin 'honza/vim-snippets'

" Plugin 'Valloric/YouCompleteMe'
" Need installation, install cmake, e.g.
"   brew install cmake
" Then:
"   (cd ~/.vim/bundle/YouCompleteMe ; ./install.sh --clang-completer)

"Plugin 'file:///Users/andersar/Documents/code/vim-python-snippets'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line
"
" Trigger configuration. Do not use <tab> if you use https://github.com/Valloric/YouCompleteMe.
let g:UltiSnipsExpandTrigger="<c-j>"
"let g:UltiSnipsJumpForwardTrigger="<c-b>"
"let g:UltiSnipsJumpBackwardTrigger="<c-z>"

map Q gq
set sw=4
set ts=8
set expandtab
set cindent

set noswapfile
set nobackup
set nowb
set autowrite

set laststatus=2
if has("gui_macvim")
    let g:Powerline_symbols = 'fancy'
    let g:airline_powerline_fonts = 1 
    colorscheme murphy
    set guifont=Sauce\ Code\ Powerline:h11
    set lines=40 columns=90
    " set fullscreen
endif
set makeprg=./make_command.sh
