" Auther : eliz40x
" Licence : MIT LICENCE (https://github.com/eliz40x/nvim/blob/master/LICENSE)

" vim-plug : plugin manager {{{
call plug#begin("~/.config/nvim/plugged")
" Highright toml
Plug 'cespare/vim-toml'             , { 'for' : ['toml']     }
" Asynchronous execution library
Plug 'Shougo/vimproc.vim'           , { 'do'  : 'make'       }
" Arrangement source cord
Plug 'godlygeek/tabular'            , { 'on'  : 'Tabularize' }
" Faster Folding
Plug 'Konfekt/FastFold'             , { 'for' : ['haskell']  }
" Distraction-free writing in Vim
Plug 'junegunn/goyo.vim'            , { 'on'  : 'Goyo'       }
" File operation
Plug 'scrooloose/nerdtree'          , { 'on':  'NERDTreeToggle' }
" Vim text object addon
Plug 'tpope/vim-surround'
" Twitter on Vim
Plug 'basyura/TweetVim'             , { 'on'  : 'Twitter'    }
  \ | Plug 'mattn/webapi-vim'       , { 'on'  : 'Twitter'    }
  \ | Plug 'basyura/twibill.vim'    , { 'on'  : 'Twitter'    }
  \ | Plug 'tyru/open-browser.vim'  , { 'on'  : 'Twitter'    }
  \ | Plug 'basyura/bitly.vim'      , { 'on'  : 'Twitter'    }
" Use You a Vim for Great Good!
Plug 'Shougo/unite.vim'
  \ | Plug 'Shougo/neomru.vim'
  \ | Plug 'eagletmt/unite-haddock' , { 'for' : ['haskell']  }
  \ | Plug 'h1mesuke/unite-outline'
  \ | Plug 'Shougo/neoyank.vim'
" Extension of statusline
Plug 'itchyny/lightline.vim'
" visualization of indent
Plug 'Yggdroot/indentLine'
" Asynchronous completion framework 
Plug 'Shougo/deoplete.nvim'
" Color Scheme
Plug 'morhetz/gruvbox'
" for Haskell
Plug 'eagletmt/ghcmod-vim'          , { 'for' : ['haskell']  }
Plug 'eagletmt/neco-ghc'            , { 'for' : ['haskell']  }
Plug 'dag/vim2hs'                   , { 'for' : ['haskell']  }
" for Python
Plug 'davidhalter/jedi-vim'         , { 'for' : ['python']  }
" for Scala
Plug 'derekwyatt/vim-scala'         , { 'for' : ['scala'] }
call plug#end()

let g:plug_threads = 16
let g:plug_timeout = 30
let g:plug_retries = 2
let g:plug_shallow = 1
let g:plug_window  = "tabnew"
" }}}

" plugin settings {{{

" Unite {{{
" }}}

" deoplete {{{
let g:deoplete#enable_at_startup          = 1
let g:deoplete#enable_smart_case          = 1
let g:deoplete#auto_complete_start_length = 3
let g:deoplete#max_list                   = 10
" }}}

" lightline {{{
let g:lightline = { 'colorscheme': 'gruvbox' }
" }}}

" indentLine {{{
" }}}

" necoghc {{{
let g:necoghc_enable_detailed_browse = 1
" }}}

" vim2hs {{{
let g:haskell_conceal              = 0
let g:haskell_conceal_wide         = 0
let g:haskell_conceal_enumerations = 0
let g:haskell_quasi                = 1
let g:haskell_interpolation        = 1
let g:haskell_regex                = 1
let g:haskell_jmacro               = 1
let g:haskell_shqq                 = 1
let g:haskell_sql                  = 1
let g:haskell_json                 = 1
let g:haskell_xml                  = 1
let g:haskell_hsp                  = 1
let g:haskell_multiline_strings    = 0
let g:haskell_tabular              = 0
" }}}

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
inoremap <C-h> <Esc>
vnoremap <C-h> <Esc>
inoremap <C-p> <Up>
inoremap <C-n> <Down>
inoremap <C-b> <Left>
inoremap <C-f> <Right>

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

highlight ZenkakuSpace cterm=underline ctermfg=lightblue guibg=#666666
au BufNewFile,BufRead * match ZenkakuSpace /　/

augroup HighlightTrailingSpaces
  autocmd!
  autocmd VimEnter,WinEnter,ColorScheme * highlight TrailingSpaces term=underline guibg=Gray ctermbg=Gray
  autocmd VimEnter,WinEnter * match TrailingSpaces /\s\+$/
augroup END

let $NVIM_TUI_ENABLE_TRUE_COLOR=1
" }}}

set background=dark
colorscheme gruvbox
syntax on
filetype plugin indent on

