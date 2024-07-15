set nocompatible "unknow required
filetype off   " unknow required

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" Add all your plugins here

" for fold
Plugin 'tmhedberg/SimpylFold'

" auto indent for pep8
Plugin 'vim-scripts/indentpython.vim'

Plugin 'vim-airline/vim-airline'

Plugin 'vim-airline/vim-airline-themes'

" for git
Plugin 'tpope/vim-fugitive'

" pep8 check
Plugin 'nvie/vim-flake8'
Plugin 'scrooloose/syntastic'

"file list
Plugin 'scrooloose/nerdtree'

" All of plugin must added before follwing line
call vundle#end()

filetype plugin indent on


syntax on
colorscheme Tomorrow-Night

"set lines=35 columns=150
"set colorcolumn=90

set nowrap
set tabstop=4
set shiftwidth=4
set expandtab
set smartindent
set autoindent
set encoding=utf-8

" set relative number with toggle
set number relativenumber

augroup numbertoggle
  autocmd!
  autocmd BufEnter,FocusGained,InsertLeave * set relativenumber
  autocmd BufLeave,FocusLost,InsertEnter   * set norelativenumber
augroup END

"remap leader key
let mapleader=" "
map <leader>s :source ~/.vimrc<CR>
map <C-n> :NERDTreeToggle<CR>

" set split default
set splitbelow
set splitright

"Enable folding
set foldmethod=indent
set foldlevel=99

let g:SimpyFold_docstring_preview=1

"ignore files in NERDTree
let NERDTreeIgnore=['\.pyc$', '\~$'] 

"split navigations
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" Enable folding with spacebar
"nnoremap <space> za

au BufNewFile,BufRead *.py
    \ set softtabstop=4|
    \ set textwidth=79|
    \ set fileformat=unix
