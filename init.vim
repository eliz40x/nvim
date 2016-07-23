" Auther : eliza0x
" Licence : MIT LICENCE (https://github.com/eliz40x/nvim/blob/master/LICENSE)

filetype off
" Miv : plugin manager
set rtp^=~/.config/nvim/miv/miv/

nnoremap ;  :
nnoremap :  ;
vnoremap ;  :
vnoremap :  ;
nnoremap k  gk
nnoremap j  gj
vnoremap k  gk
vnoremap j  gj
nnoremap gk  k
nnoremap gj  j
vnoremap gk  k
vnoremap gj  j

nnoremap mh ^
nnoremap ml $
vnoremap mh ^
vnoremap ml $

nnoremap fd :nohl<CR>
inoremap fd <Esc>:nohl<CR>
vnoremap fd <Esc>:nohl<CR>

inoremap <C-j> <Down>
inoremap <C-k> <Up>
inoremap <C-h> <Left>
inoremap <C-l> <Right>

nnoremap <Space> <Nop>
nnoremap <Space><Space> :<C-u>
nnoremap <Space> :<C-u>echo("[Plugin] w: W3m f: File g: GhcMod")<CR>

nnoremap <Space>w :<C-u>W3m google
nnoremap <Space>m :<C-u>

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
nnoremap <silent>[Tab]n :<C-u>tabNext<CR>
nnoremap <silent>[Tab]N :<C-u>tabprevious<CR>
nnoremap <silent>[Tab]t :<C-u>tabnew<CR>
nnoremap <silent>[Tab] :<C-u>echo("[Tab] h,j,k,l: Move   H,J,K,L: ChangeSize\n     s: Hsplit v: Vsplit t: New n: Next N:previous")<CR>

nmap <Space>f [File]
nnoremap <silent>[File] <Nop>
nnoremap <silent>[File]t :<C-u>NERDTreeToggle<CR>
nnoremap <silent>[File]i :<C-u>FZF
nnoremap <silent>[File]w :<C-u>w<CR>
nnoremap <silent>[File]W :<C-u>w!<CR>
nnoremap <silent>[File]q :<C-u>q<CR>
nnoremap <silent>[File]Q :<C-u>q!<CR>
nnoremap <silent>[File] : <C-u>echo("[GhcMod] t: Tree i: IncSearch w: Write q: Quit")<CR>

nmap <Space>g [GhcMod]
nnoremap [GhcMod] <Nop>
nnoremap <silent>[GhcMod]t :<C-u>GhcModType<CR>
nnoremap <silent>[GhcMod]c :<C-u>GhcModTypeClear<CR>
nnoremap <silent>[GhcMod]l :<C-u>GhcModLintAsync<CR>
nnoremap <silent>[GhcMod]e :<C-u>GhcModExpand<CR>
nnoremap <silent>[GhcMod] :<C-u>echo("[GhcMod] t: Type c: TypeClear l: Lint e: Expand")<CR>

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
set scrolloff=10

let $NVIM_TUI_ENABLE_TRUE_COLOR=1

set background=dark
syntax on
filetype plugin indent on
