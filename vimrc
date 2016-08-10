"----------------- Vundle ------------------
"

set nocompatible             " not compatiable with the old-fashion vi mode
filetype off                 " required

" Auto installing vundle from your vimrc
" Setting up Vundle - the vim plugin bundler
let iCanHazVundle=1
let vundle_readme=expand('~/.vim/bundle/Vundle.vim/README.md')
if !filereadable(vundle_readme)
  echo "Installing Vundle..."
  echo ""
  silent !mkdir -p ~/.vim/bundle
  silent !git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
  let iCanHazVundle=0
endif

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle managle Vundle
" required
Plugin 'VundleVim/Vundle.vim'

call vundle#end()            " required
" filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
" filetype plugin on

"----------------- General Setting ------------------
"

syntax on                    " enable syntax highlight

set history=50               " keep 50 lines of command line history
set number                   " enable line numbers
set autoindent               " enable autoindent
set expandtab                " use space instead of tab
set tabstop=2                " insert 2 spaces for a tab
set shiftwidth=2             " the number of space characters inserted for indentation
set autoread                 " auto read when file is changed from outside 
set t_Co=256                 " 256 color mode
set cursorline               " highlight current line
set showmatch                " Cursor shows matching ) and }
set showmode                 " Show current mode
set backspace=2              " make backspace work like most other apps
set laststatus=2             " status line
set wildmode=longest,list,full
set wildmenu

" encoding settings
set encoding=utf-8
set termencoding=utf-8
set fileencoding=utf-8


"
"----------------- End General -----------------
