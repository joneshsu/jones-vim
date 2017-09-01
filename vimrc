"----------------- Vundle ----------------------
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

" My Plugins here
Plugin 'The-NERD-tree'                      " The NERDTree is a filesystem explorer
Plugin 'Xuyuanp/nerdtree-git-plugin'        " Lets NERDTree supports git information
Plugin 'vim-airline/vim-airline'            " Lean & mean status/tabline for vim that's light as air 
Plugin 'kien/ctrlp.vim'                     " Full path fuzzy file, buffer, mru, tag... finder for Vim
Plugin 'airblade/vim-gitgutter'             " gitgutter shows a git diff

" Tagbar providers an easy way to brose the tags of the current file and get
" an overview of its structure.
" Dependencies module ctags.
Plugin 'majutsushi/tagbar' 

" Vim plugin for the_silver_searcher as 'Ag'
" Dependencies module the_silver_searcher
Plugin 'rking/ag.vim'

" Snippet engines supporting vim-snippets
Plugin 'honza/vim-snippets'
Plugin 'MarcWeber/vim-addon-mw-utils'
Plugin 'tomtom/tlib_vim'
Plugin 'garbas/vim-snipmate'

" Vim autocomplete
" Run /bundle/YouCompleteMe/install.py -all 
Plugin 'Valloric/YouCompleteMe'

" Vim Theme
Plugin 'dracula/vim'

call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
filetype plugin on
filetype indent on

"----------------- End Vundle ------------------

"----------------- General Setting -------------
"

syntax on                    " enable syntax highlight
color dracula

set history=50               " keep 50 lines of command line history
set number                   " enable line numbers
set autoindent               " enable autoindent
set expandtab                " use space instead of tab
set tabstop=2                " insert 2 spaces for a tab
set shiftwidth=2             " the number of space characters inserted for indentation
set autoread                 " auto read when file is changed from outside 
set noeb vb t_vb=            " disable sound on errors
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


"----------------- Shortcut Settings -----------

" For NERDTree -> Using Control+n to open NERDTree 
map <C-n> : NERDTree<CR>

" For TagbarToggle -> Using Control+c to open TagbarToggle
nmap <C-\> : TagbarToggle<CR>

" To move effeciently between splits
nmap gh <C-w>h
nmap gj <C-w>j
nmap gk <C-w>k
nmap gl <C-w>l

" Using Ag! to avoid opening first fetch file
nmap <c-t> : Ag! ""<left>.

" Replace Esc to jj on insert mode
imap jj <Esc>

" NERDTree will be opened when vim starts up if no files were specified.
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

" Display numbers of line
let NERDTreeShowLineNumbers=1
let NERDTreeAutoCenter=1
let NERDTreeWinSize=31
let NERDTreeShowHidden=1
let NERDTreeIgnore=['\.pyc', '\~$', '\.swp', '\.DS_Store']
let NERDTreeShowBookmarks=1

let g:NERDTreeIndicatorMapCustom = {
  \ "Modified"   : "✹",
  \ "Staged"     : "✚",
  \ "Untracked"  : "✭",
  \ "Renamed"    : "➜",
  \ "Unmerged"   : "═",
  \ "Deleted"    : "✖",
  \ "Dirty"      : "✗",
  \ "Clean"      : "✔︎",
  \ "Unknown"    : "?",
  \ }

" Setting space size for files of Python.
autocmd Filetype python setlocal expandtab smarttab tabstop=4 shiftwidth=4 softtabstop=4
nnoremap <F2> :<C-U>setlocal lcs=tab:>-,trail:-,eol:$ list! list? <CR>

" Setting CtrlP
" Change the default mapping and the default command to invoke CtrlP
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'

" When invoked, unless a starting directory is specified, CtrlP will set its
" local working directory according to this variable
let g:ctrlp_working_path_mode = 'ra'

" Exclude files and directories using Vim's wildignore and CtrlP's own g:ctrlp_custom_ignore
let g:ctrlp_custom_ignore = '\v[\/](node_modules|vendor)|(\.(swp|ico|git|svn))$'

let g:ctrlp_dont_split = 'NERD_tree_2'
let g:ctrlp_show_hidden = 1

" Setting vim-gitgutter
let g:gitgutter_enabled = 1
highlight clear SignColumn " For the same appearance as your line number column

" Let ag to always start searching from project root
let g:ag_working_path_mode="r"

" Let disable preview window when auto_complete
let g:ycm_add_preview_to_completeopt = 0
set completeopt-=preview

" Let auto close preview window when auto_complete 
" let g:ycm_autoclose_preview_window_after_completion = 1
" let g:ycm_autoclose_preview_window_after_insertion = 1
