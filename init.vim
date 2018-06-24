" Auther : eliza0x
" Licence : MIT LICENCE (https://github.com/eliz40x/nvim/blob/master/LICENSE)

filetype off

call plug#begin('$HOME/.local/share/nvim/plugged')
Plug 'mxw/vim-prolog'            , {'for': 'toml'}
Plug 'posva/vim-vue'             , {'for': 'vue'}
Plug 'slim-template/vim-slim'    , {'for': 'slim'}
Plug 'lervag/vimtex'             , {'for': 'latex'}
Plug 'rhysd/vim-llvm'            , {'for': 'llvm'}
Plug 'cespare/vim-toml'          , {'for': 'toml'}
Plug 'rust-lang/rust.vim'        , {'for': 'rust'}
Plug 'vim-jp/cpp-vim'            , {'for': 'cpp'}
Plug 'junegunn/fzf'              , { 'dir': '~/.fzf' , 'do': './install --all' }
Plug 'scrooloose/nerdtree'       , {'on': 'NERDTreeToggle'}
Plug 'Yggdroot/indentLine'
Plug 'easymotion/vim-easymotion'
Plug 'godlygeek/tabular'
Plug 'itchyny/lightline.vim'
Plug 'lilydjwg/colorizer'
Plug 'junegunn/goyo.vim'
Plug 'tpope/vim-surround'
Plug 'itchyny/vim-cursorword'
Plug 'morhetz/gruvbox'
Plug 'cocopon/iceberg.vim'

" LanguageClient {{{
" Plug 'autozimu/LanguageClient-neovim', {
"    \ 'branch': 'next',
"    \ 'do': './install.sh'
"    \ }
" let g:LanguageClient_serverCommands = {
"     \ 'haskell': ['hie', '--lsp'],
"     \ }
" }}}

" Auto complete {{{
if has('nvim')
  Plug 'Shougo/deoplete.nvim', { 
    \ 'do': ':UpdateRemotePlugins' 
    \ }
else
  Plug 'Shougo/deoplete.nvim'
  Plug 'roxma/nvim-yarp'
  Plug 'roxma/vim-hug-neovim-rpc'
endif
let g:deoplete#enable_at_startup = 1
" }}}

" python {{{
" original http://stackoverflow.com/questions/12374200/using-uncrustify-with-vim/15513829#15513829
" function! Preserve(command)
"     " Save the last search.
"     let search = @/
"     " Save the current cursor position.
"     let cursor_position = getpos('.')
"     " Save the current window position.
"     normal! H
"     let window_position = getpos('.')
"     call setpos('.', cursor_position)
"     " Execute the command.
"     execute a:command
"     " Restore the last search.
"     let @/ = search
"     " Restore the previous window position.
"     call setpos('.', window_position)
"     normal! zt
"     " Restore the previous cursor position.
"     call setpos('.', cursor_position)
" endfunction
" 
" function! Autopep8()
"     call Preserve(':silent %!autopep8 -')
" endfunction

" Shift + F で自動修正
" let g:syntastic_python_checkers = ['pyflakes', 'pep8']
" Plug 'scrooloose/syntastic', {'for': 'python'}
" }}}

" haskell {{{
Plug 'dag/vim2hs'                , {'for': 'haskell'}
Plug 'eagletmt/ghcmod-vim'       , {'for': 'haskell'}
Plug 'eagletmt/neco-ghc'         , {'for': 'haskell'}
Plug 'Shougo/vimproc.vim'        , {'for': 'haskell', 'do' : 'make'}

let g:ghcmod_ghc_options = ['-Wall']

let g:haskell_conceal              = 0
let g:haskell_conceal_enumerations = 0
let g:haskell_conceal_wide         = 0
let g:haskell_hsp                  = 0
let g:haskell_interpolation        = 0
let g:haskell_jmacro               = 0
let g:haskell_json                 = 0
let g:haskell_multiline_strings    = 0
let g:haskell_quasi                = 0
let g:haskell_regex                = 0
let g:haskell_shqq                 = 0
let g:haskell_sql                  = 0
let g:haskell_tabular              = 0
let g:haskell_xml                  = 0
" }}}

let g:lightline = { 'colorscheme': 'jellybeans' }
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

nmap <Space>p [Python]
autocmd FileType python nnoremap <silent>[Python]f :call Autopep8()<CR>

nmap <Space>h [Haskell]
autocmd FileType haskell noremap [Haskell] <Nop>
autocmd FileType haskell noremap <silent>[Haskell]t :<C-u>GhcModType<CR>
autocmd FileType haskell noremap <silent>[Haskell]c :<C-u>GhcModTypeClear<CR>
autocmd FileType haskell noremap <silent>[Haskell]l :<C-u>GhcModLintAsync<CR>
autocmd FileType haskell noremap <silent>[Haskell]e :<C-u>GhcModExpand<CR>
autocmd FileType haskell noremap <silent>[Haskell]i :<C-u>Unite haskellimport<CR>
autocmd FileType haskell noremap <silent>[Haskell]d :<C-u>Unite haddock<CR>
autocmd FileType haskell noremap <silent>[Haskell]h :<C-u>Unite hoogle<CR>
autocmd FileType haskell noremap <silent>[Haskell]o :<C-u>TagbarToggle<CR>
autocmd FileType haskell noremap <silent>[Haskell]j :<C-u>tjump 
autocmd FileType haskell noremap <silent>[Haskell]j :<C-u>tjump 
autocmd FileType haskell noremap <silent>[Haskell]f :<C-u>%!stylish-haskell<CR>
autocmd FileType haskell noremap <silent>[Haskell]  :<C-u>echo("[GhcMod] t:Type c:TypeClear l:Lint e:Expand i:Import d:Haddock h:Hoole o: Tagbar j: Tagjump f: format")<CR>

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
colorscheme gruvbox
" colorscheme iceberg

