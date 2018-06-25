" Auther : eliza0x
" Licence : MIT LICENCE (https://github.com/eliz40x/nvim/blob/master/LICENSE)

filetype off

call plug#begin('$HOME/.local/share/nvim/plugged')
Plug 'vim-jp/cpp-vim'            , {'for': 'cpp'}
Plug 'junegunn/fzf'              , { 'dir': '~/.fzf' , 'do': './install --all' }
Plug 'Yggdroot/indentLine'
Plug 'easymotion/vim-easymotion'
Plug 'godlygeek/tabular'
Plug 'itchyny/lightline.vim'
Plug 'lilydjwg/colorizer'
Plug 'junegunn/goyo.vim'
Plug 'tpope/vim-surround'
Plug 'itchyny/vim-cursorword'
Plug 'cocopon/iceberg.vim'
Plug 'popkirby/lightline-iceberg'

let g:lightline = {}
let g:lightline.colorscheme = 'iceberg'
let g:indentLine_setConceal = 0
let g:EasyMotion_do_mapping = 0
let g:EasyMotion_smartcase = 1
let g:EasyMotion_use_smartsign_us = 1
call plug#end()

set rtp+=~/.fzf

nnoremap k  gk
nnoremap j  gj
vnoremap k  gk
vnoremap j  gj
nnoremap gk  k
nnoremap gj  j
vnoremap gk  k
vnoremap gj  j

nnoremap zh ^
nnoremap zl $
vnoremap zh ^
vnoremap zl $

map  / <Plug>(easymotion-sn)
omap / <Plug>(easymotion-tn)
map  n <Plug>(easymotion-next)
map  N <Plug>(easymotion-prev)
nmap F <Plug>(easymotion-overwin-f)
map  J <Plug>(easymotion-j)
map  K <Plug>(easymotion-k)

nnoremap <Space> <Nop>
nnoremap <Space> :<C-u>echo("[Plugin] f:File t:Window")<CR>

nmap <Space>t [Tab]
nnoremap [Tab] <Nop>
nnoremap <silent>[Tab]h <C-w>h
nnoremap <silent>[Tab]j <C-w>j
nnoremap <silent>[Tab]k <C-w>k
nnoremap <silent>[Tab]l <C-w>l
nnoremap <silent>[Tab]H <C-w><
nnoremap <silent>[Tab]J <C-w>-
nnoremap <silent>[Tab]K <C-w>+
nnoremap <silent>[Tab]L <C-w>>
nnoremap <silent>[Tab]t :<C-u>tabnew<CR>
nnoremap <silent>[Tab]  :<C-u>echo("[Tab] hjkl:Move HJKL:ChangeSize t:New")<CR>

nmap <Space>f [File]
nnoremap <silent>[File]  <Nop>
nnoremap <silent>[File]r :<C-u>e<CR>
nnoremap <silent>[File]s :<C-u>FZF<CR>
nnoremap <silent>[File]  : <C-u>echo("[GhcMod] s:Search t:Tree")<CR>

set fileencoding=utf-8
set cursorline
set clipboard=unnamedplus
set expandtab
set foldmethod=marker
set hlsearch
set ignorecase
set incsearch
set laststatus=2
set mouse=a
set noswapfile
set nowildmenu
set nowrapscan
set number
set shiftwidth=4
set showcmd
set showmatch
set smartcase
set softtabstop=4
set tabstop=4
set wildmode=list:longest,full
set scrolloff=10
set t_Co=256
let $NVIM_TUI_ENABLE_TRUE_COLOR=1

set background=dark
colorscheme iceberg

