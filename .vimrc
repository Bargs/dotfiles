call plug#begin('~/.vim/plugged')

Plug 'kien/ctrlp.vim'
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'pangloss/vim-javascript'
Plug 'rking/ag.vim'
Plug 'bling/vim-airline'
Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-fugitive'
Plug 'Valloric/YouCompleteMe'
Plug 'ternjs/tern_for_vim'

call plug#end()

filetype plugin on
filetype plugin indent on
syntax on
set number

"" Whitespace
set nowrap
set backspace=indent,eol,start
set expandtab "Expand tabs to spaces
set tabstop=2 "tabs are 2 spaces wide
set softtabstop=2 "this makes backspace delete all 4 space characters
set shiftwidth=2 "makes >> and << use 4 spaces as well
set ofu=syntaxcomplete#Complete " Enable Omnicomplete for all languages
set omnifunc=syntaxcomplete#Complete

"" Searching
set hlsearch
set incsearch
set ignorecase

"" Buffers
set hidden
set wildmenu
set wildmode=longest:full
set wildignore+=*\\target\\*,*.swp

"" Statusline always on
set laststatus=2

colorscheme molokai

if has('gui_running')
	set guifont=Consolas:h10
    set guioptions-=T "remove toolbar
    set guioptions+=b "enable horizontal scrollbar
endif

""" Key mappings
"" Copy Paste
vmap <C-c> "+y
noremap <C-v> "+gP
nmap <C-n> :NERDTreeToggle<CR>
inoremap jk <Esc>
"" Map Omnicomplete to control-space
inoremap <C-space> <C-x><C-o>

"" Ctrlp variables
let g:ctrlp_cmd = 'CtrlPMixed'

"" Airline config
let g:airline_theme = 'badwolf'
