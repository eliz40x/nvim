" Auther : eliza0x
" Licence : MIT LICENCE (https://github.com/eliz40x/nvim/blob/master/LICENSE)

filetype off

let g:EasyMotion_do_mapping = 0
let g:EasyMotion_smartcase = 1
let g:EasyMotion_use_smartsign_us = 1

let g:ghcmod_ghc_options = ['-Wall']

let g:haskell_conceal              = 0
let g:haskell_conceal_enumerations = 0
let g:haskell_conceal_wide         = 0
let g:haskell_hsp                  = 0
let g:haskell_interpolation        = 1
let g:haskell_jmacro               = 0
let g:haskell_json                 = 1
let g:haskell_multiline_strings    = 0
let g:haskell_quasi                = 1
let g:haskell_regex                = 0
let g:haskell_shqq                 = 0
let g:haskell_sql                  = 0
let g:haskell_tabular              = 1
let g:haskell_xml                  = 0

let g:lightline = { 'colorscheme': 'jellybeans' }

let g:necoghc_enable_detailed_browse = 1
let g:neosnippet#snippets_directory='~/.config/nvim/snip/'

call plug#begin('$HOME/.local/share/nvim/plugged')
Plug 'Konfekt/FastFold'
Plug 'Shougo/neosnippet'
Plug 'Shougo/vimproc.vim', { 'do': 'make' } 
Plug 'Yggdroot/indentLine'
Plug 'cespare/vim-toml', {'for': 'toml'}
Plug 'dag/vim2hs', {'for': 'haskell'}
Plug 'eagletmt/ghcmod-vim', {'for': 'haskell'}
Plug 'easymotion/vim-easymotion'
Plug 'godlygeek/tabular'
Plug 'itchyny/lightline.vim'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/goyo.vim'
Plug 'lilydjwg/colorizer'
Plug 'morhetz/gruvbox'
Plug 'rust-lang/rust.vim', {'for': 'rust'}
Plug 'scrooloose/nerdtree', {'on': 'NERDTreeToggle'}
Plug 'tpope/vim-surround'
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
nnoremap <Space><Space> :<C-u>Unite command<CR>
nnoremap <Space> :<C-u>echo("[Plugin] f:File h:GhcMod g:Git")<CR>

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
nnoremap <silent>[File]t :<C-u>NERDTreeToggle<CR>
nnoremap <silent>[File]s :<C-u>FZF<CR>
nnoremap <silent>[File]  : <C-u>echo("[GhcMod] s:Search t:Tree")<CR>

nmap <Space>h [Haskell]
nnoremap [GhcMod] <Nop>
nnoremap <silent>[Haskell]t :<C-u>GhcModType<CR>
nnoremap <silent>[Haskell]c :<C-u>GhcModTypeClear<CR>
nnoremap <silent>[Haskell]l :<C-u>GhcModLintAsync<CR>
nnoremap <silent>[Haskell]e :<C-u>GhcModExpand<CR>
nnoremap <silent>[Haskell]i :<C-u>Unite haskellimport<CR>
nnoremap <silent>[Haskell]d :<C-u>Unite haddock<CR>
nnoremap <silent>[Haskell]h :<C-u>Unite hoogle<CR>
nnoremap <silent>[Haskell]o :<C-u>TagbarToggle<CR>
nnoremap <silent>[Haskell]j :<C-u>tjump 
nnoremap <silent>[Haskell]j :<C-u>tjump 
nnoremap <silent>[Haskell]f :<C-u>%!stylish-haskell<CR>
nnoremap <silent>[Haskell]  :<C-u>echo("[GhcMod] t:Type c:TypeClear l:Lint e:Expand i:Import d:Haddock h:Hoole o: Tagbar j: Tagjump f: format")<CR>

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
set shiftwidth=2
set showcmd
set showmatch
set smartcase
set softtabstop=2
set tabstop=2
set wildmode=list:longest,full
set scrolloff=10
set t_Co=256
let $NVIM_TUI_ENABLE_TRUE_COLOR=1

set background=dark
colorscheme gruvbox

