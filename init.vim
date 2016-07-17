" Auther : eliza0x
" Licence : MIT LICENCE (https://github.com/eliz40x/nvim/blob/master/LICENSE)

" Miv : plugin manager
filetype off
set rtp^=~/.config/nvim/miv/miv/

" Key Maping
nnoremap ;  :
nnoremap :  ;
vnoremap ;  :
vnoremap :  ;
nnoremap k  gk
nnoremap j  gj
vnoremap k  gk
vnoremap j  gj
nnoremap H  ^
nnoremap L  $
vnoremap H  ^
vnoremap L  $
nnoremap gk  k
nnoremap gj  j
vnoremap gk  k
vnoremap gj  j

nnoremap fd :nohl<CR>
inoremap fd <Esc>:nohl<CR>
vnoremap fd <Esc>:nohl<CR>

inoremap <C-p> <Up>
inoremap <C-n> <Down>
inoremap <C-b> <Left>
inoremap <C-f> <Right>

nnoremap <Space> :
nnoremap \f :<C-u>FZF<CR>
nnoremap \t :<C-u>NERDTreeToggle<CR>

nnoremap \ht :<C-u>GhcModType<CR>
nnoremap \hc :<C-u>GhcModCheckAndLintAsync<CR>
" }}} 

" vim options
set cindent
set clipboard=unnamedplus
set cmdheight=2
set cursorline
set expandtab
set foldmethod=marker
set hlsearch
set ignorecase
set incsearch
set laststatus=2
set noswapfile
set nowildmenu
set nowrapscan
set number
set shiftwidth=2
set showcmd
set showmatch
set smartcase
set softtabstop=2
set tabstop=2
set wildmode=list:longest,full
set scrolloff=3

let $NVIM_TUI_ENABLE_TRUE_COLOR=1

set background=dark
syntax on
filetype plugin indent on
