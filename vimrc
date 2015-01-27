set nocompatible               " be iMproved
filetype off                   " required!

let mapleader=","

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

map Q gq
set sw=4
set ts=4
set expandtab
set cindent

set noswapfile
set nobackup
set nowb
set autowrite

" let Vundle manage Vundle
" required! 
Bundle 'gmarik/vundle'

" My Bundles here:
"
" original repos on github
Bundle 'tpope/vim-fugitive'
Bundle 'Lokaltog/vim-easymotion'
Bundle 'bling/vim-airline'
Bundle 'molokai'
" vim-scripts repos
Bundle 'L9'
Bundle 'FuzzyFinder'
Bundle 'jnwhiteh/vim-golang'
Bundle 'msanders/snipmate.vim'
Bundle 'mfukar/robotframework-vim'
Bundle 'tpope/vim-eunuch'
" non github repos
" Bundle 'git://git.wincent.com/command-t.git'
" ...
" Track the engine.
Bundle 'SirVer/ultisnips'

" Snippets are separated from the engine. Add this if you want them:
Bundle 'honza/vim-snippets'

Plugin 'Valloric/YouCompleteMe'
" Need installation, install cmake, e.g.
"   brew install cmake
" Then:
"   (cd ~/.vim/bundle/YouCompleteMe ; ./install.sh --clang-completer)

" Trigger configuration. Do not use <tab> if you use https://github.com/Valloric/YouCompleteMe.
"let g:UltiSnipsExpandTrigger="<tab>"
"let g:UltiSnipsJumpForwardTrigger="<c-b>"
"let g:UltiSnipsJumpBackwardTrigger="<c-z>"


filetype plugin indent on     " required! 
"
" Brief help
" :BundleList          - list configured bundles
" :BundleInstall(!)    - install(update) bundles
" :BundleSearch(!) foo - search(or refresh cache first) for foo
" :BundleClean(!)      - confirm(or auto-approve) removal of unused bundles
"
" see :h vundle for more details or wiki for FAQ
" NOTE: comments after Bundle command are not allowed..

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
