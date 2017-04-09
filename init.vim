" Auther : eliza0x
" Licence : MIT LICENCE (https://github.com/eliz40x/nvim/blob/master/LICENSE)

filetype off
call plug#begin('$HOME/.local/share/nvim/plugged')
Plug 'losingkeys/vim-niji', {'for': 'scheme'}
Plug 'scrooloose/nerdtree', {'on': 'NERDTreeToggle'}
Plug 'cespare/vim-toml', {'for': 'toml'}
let g:EasyMotion_use_smartsign_us = 1
let g:EasyMotion_do_mapping = 0
let g:EasyMotion_smartcase = 1
Plug 'easymotion/vim-easymotion'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'Shougo/vimproc.vim', { 'do': 'make' } 
Plug 'godlygeek/tabular'
Plug 'Konfekt/FastFold'
let g:unite_enable_start_insert       = 1
let g:unite_enable_ignore_case        = 1
let g:unite_enable_smart_case         = 1
Plug 'Shougo/unite.vim'
Plug 'Shougo/neoyank.vim'
let g:unite_source_haddock_browser = 'chromium'
set tags=tags;/,codex.tags;/
" tagbar settings {{{
let g:tagbar_type_haskell = {
  \ 'ctagsbin'  : 'hasktags',
  \ 'ctagsargs' : '-x -c -o-',
  \ 'kinds'     : [
    \  'm:modules:0:1',
    \  'd:data: 0:1',
    \  'd_gadt: data gadt:0:1',
    \  't:type names:0:1',
    \  'nt:new types:0:1',
    \  'c:classes:0:1',
    \  'cons:constructors:1:1',
    \  'c_gadt:constructor gadt:1:1',
    \  'c_a:constructor accessors:1:1',
    \  'ft:function types:1:1',
    \  'fi:function implementations:0:1',
    \  'o:others:0:1'
  \ ],
  \ 'sro'        : '.',
  \ 'kind2scope' : {
    \ 'm' : 'module',
    \ 'c' : 'class',
    \ 'd' : 'data',
    \ 't' : 'type'
  \ },
  \ 'scope2kind' : {
    \ 'module' : 'm',
    \ 'class'  : 'c',
    \ 'data'   : 'd',
    \ 'type'   : 't'
  \ }
\ }
" }}}
Plug 'majutsushi/tagbar', {'for': 'haskell'}
set formatprg=stylish-haskell
Plug 'jaspervdj/stylish-haskell', {'for': 'haskell'}
Plug 'tpope/vim-fugitive'
Plug 'cohama/agit.vim', {'on': 'Agit'}
Plug 'tpope/vim-surround'
let g:lightline = { 'colorscheme': 'gruvbox' }
Plug 'itchyny/lightline.vim'
Plug 'Yggdroot/indentLine'
let g:deoplete#enable_at_startup          = 1
let g:deoplete#enable_smart_case          = 1
let g:deoplete#auto_complete_start_length = 2
function! DoRemote(arg)
  UpdateRemotePlugins
endfunction
Plug 'Shougo/deoplete.nvim'
Plug 'morhetz/gruvbox'
Plug 'lilydjwg/colorizer'
let g:ghcmod_ghc_options = ['-Wall']
Plug 'eagletmt/ghcmod-vim', {'for': 'haskell'}
let g:necoghc_enable_detailed_browse = 1
Plug 'eagletmt/neco-ghc', {'for': 'haskell'}
" vim2hs settings {{{
let g:haskell_conceal              = 0
let g:haskell_conceal_wide         = 0
let g:haskell_conceal_enumerations = 0
let g:haskell_quasi                = 1
let g:haskell_interpolation        = 1
let g:haskell_regex                = 0
let g:haskell_jmacro               = 0
let g:haskell_shqq                 = 0
let g:haskell_sql                  = 0
let g:haskell_json                 = 1
let g:haskell_xml                  = 0
let g:haskell_hsp                  = 0
let g:haskell_multiline_strings    = 0
let g:haskell_tabular              = 1
" }}}
Plug 'dag/vim2hs', {'for': 'haskell'}
Plug 'itchyny/vim-haskell-indent', {'for': 'haskell'}
Plug 'pbrisbin/vim-syntax-shakespeare', {'for': 'haskell'}
Plug 'davidhalter/jedi-vim', {'for': 'python'}
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

inoremap <C-j> <Down>
inoremap <C-k> <Up>
inoremap <C-h> <Left>
inoremap <C-l> <Right>

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
nnoremap <silent>[Tab]s :<C-u>split<CR>
nnoremap <silent>[Tab]v :<C-u>vsplit<CR>
nnoremap <silent>[Tab]c :<C-u>Unite buffer<CR>
nnoremap <silent>[Tab]t :<C-u>tabnew<CR>
nnoremap <silent>[Tab]  :<C-u>echo("[Tab] hjkl:Move HJKL:ChangeSize s:Hsplit v:Vsplit t:New c:Choose")<CR>

nmap <Space>f [File]
nnoremap <silent>[File]  <Nop>
nnoremap <silent>[File]r :<C-u>e<CR>
nnoremap <silent>[File]t :<C-u>NERDTreeToggle<CR>
nnoremap <silent>[File]p :<C-u>Unite history/yank<CR>
nnoremap <silent>[File]s :<C-u>FZF<CR>
nnoremap <silent>[File]  : <C-u>echo("[GhcMod] p:paste s:Search t:Tree")<CR>

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

nmap <Space>g [Git]
nnoremap [Git] <Nop>
nnoremap <silent>[Git]s :<C-u>Gstatus<CR>
nnoremap <silent>[Git]a :<C-u>Gwrite<CR>
nnoremap <silent>[Git]r :<C-u>Gread<CR>
nnoremap <silent>[Git]m :<C-u>Gmove
nnoremap <silent>[Git]c :<C-u>Gcommit<CR>
nnoremap <silent>[Git]b :<C-u>Gblame<CR>
nnoremap <silent>[Git]d :<C-u>Gdiff<CR>
nnoremap <silent>[Git]l :<C-u>Agit<CR>
nnoremap <silent>[Git]  :<C-u>echo("[Git] s:Status a:Add r:Read m:Move c:Commit b:Blame d:Diff l:Log")<CR>

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
syntax on
filetype plugin indent on
