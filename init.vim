" Auther : eliz40x
" Licence : MIT LICENCE (https://github.com/eliz40x/nvim/blob/master/LICENSE)

" vim-plug : plugin manager {{{
call plug#begin("~/.config/nvim/plugged")
Plug 'cespare/vim-toml'             , { 'for' : ['toml']     }    " Highright toml
Plug 'Shougo/vimproc.vim'           , { 'do'  : 'make'       }    " Asynchronous execution library
Plug 'godlygeek/tabular'            , { 'on'  : 'Tabularize' }    " Arrangement source cord
Plug 'Konfekt/FastFold'             , { 'for' : ['haskell']  }    " Faster Folding
Plug 'junegunn/goyo.vim'            , { 'on'  : 'Goyo'       }    " Distraction-free writing in Vim
Plug 'scrooloose/nerdtree'          , { 'on':  'NERDTreeToggle' } " File operation
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' } " File Finder
Plug 'tpope/vim-surround'                                         " Vim text object addon
Plug 'itchyny/lightline.vim'                                      " Extension of statusline
Plug 'Yggdroot/indentLine'                                        " visualization of indent
Plug 'Shougo/deoplete.nvim'                                       " Asynchronous completion framework
Plug 'morhetz/gruvbox'                                            " colorscheme
Plug 'eagletmt/ghcmod-vim'          , { 'for' : ['haskell']  }    " for Haskell
Plug 'eagletmt/neco-ghc'            , { 'for' : ['haskell']  }
Plug 'dag/vim2hs'                   , { 'for' : ['haskell']  }
Plug 'davidhalter/jedi-vim'         , { 'for' : ['python']  }     " for python
Plug 'lilydjwg/colorizer'                                         " colorize color code
call plug#end()

let g:plug_window  = "tabnew"
" }}}

" plugin settings {{{

"FZF
set rtp+=~/.fzf

" deoplete
let g:deoplete#enable_at_startup          = 1
let g:deoplete#enable_smart_case          = 1
let g:deoplete#auto_complete_start_length = 2
let g:deoplete#max_list                   = 15

" lightline
let g:lightline = { 'colorscheme': 'gruvbox' }

" necoghc
let g:necoghc_enable_detailed_browse = 1

" vim2hs
let g:haskell_conceal              = 1
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
let g:haskell_tabular              = 0
" }}}

" Key Maping {{{
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
nnoremap <C-h> :nohl<CR>
inoremap <C-h> <Esc>:nohl<CR>
vnoremap <C-h> <Esc>:nohl<CR>

inoremap <C-p> <Up>
inoremap <C-n> <Down>
inoremap <C-b> <Left>
inoremap <C-f> <Right>

nnoremap <Space>f :<C-u>FZF<CR>
nnoremap <Space>t :<C-u>NERDTreeToggle<CR>

nnoremap <Space>ht :<C-u>GhcModType<CR>
nnoremap <Space>hc :<C-u>GhcModCheckAndLintAsync<CR>
" }}} 

" vim options {{{
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
" }}}

set background=dark
colorscheme gruvbox
syntax on
filetype plugin indent on
