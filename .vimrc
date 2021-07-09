syntax on

set nocompatible
set noerrorbells
set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set smartindent
set nu
set nowrap
set smartcase
set noswapfile
set nobackup
set undodir=~/.vim/undodir
set undofile
set hlsearch
set incsearch
set ignorecase
set smartcase
set colorcolumn=80
set backspace=indent,eol,start
set encoding=utf-8
let mapleader=" "
:set mouse=a

call plug#begin('~/.vim/plugged')

Plug 'preservim/nerdtree'
nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>
let NERDTreeQuitOnOpen = 0
let NERDTreeShowHidden=1
let NERDTreeMinimalUI = 1
let NERDTreeDirArrows = 1

" Code completion
Plug 'ycm-core/YouCompleteMe'
"Plug 'vim-scripts/AutoComplPop'
set completeopt=menuone,longest
set shortmess+=c
set pumheight=4
let g:ycm_min_num_of_chars_for_completion=8
let g:ycm_auto_hover=''
nmap <leader>D <plug>(YCMHover)
" Need to use esc not plain ctrl-c to trigger InsertLeave otherwise
" signature help stays open.
imap <C-c> <Esc>
" Stop signature help unless toggled back on
let g:ycm_disable_signature_help = 1
nmap <leader>D <plug>(YCMHover)

" Fuzzy finding
nmap <C-P> :FZF<CR>
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

" Set vim dir to project root (.git)
Plug 'airblade/vim-rooter'

" Themes
Plug 'dracula/vim'

call plug#end()
