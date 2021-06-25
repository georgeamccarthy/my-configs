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

let g:netrw_banner = 0
let g:netrw_liststyle = 3
let g:netrw_browse_split = 4
let g:netrw_altv = 1
let g:netrw_winsize = 25

"map q <Nop>
"vnoremap <P> "*p

call plug#begin('~/.vim/plugged')

Plug 'preservim/nerdtree'
nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>
let NERDTreeQuitOnOpen = 1
let NERDTreeShowHidden=1
let NERDTreeMinimalUI = 1
let NERDTreeDirArrows = 1
:inoremap <expr> <CR> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"

" Code completion
Plug 'ycm-core/YouCompleteMe'
"Plug 'vim-scripts/AutoComplPop'
set completeopt=menuone,longest
set shortmess+=c
set pumheight=2
let g:ycm_min_num_of_chars_for_completion=8

" Fuzzy finding
nmap <C-P> :FZF<CR>
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

" Set vim dir to project root (.git)
Plug 'airblade/vim-rooter'

" Themes
Plug 'dracula/vim'

call plug#end()
