call pathogen#infect()
call pathogen#helptags()

filetype plugin on
filetype plugin indent on
syntax on
set number

"" Whitespace
set nowrap
set backspace=indent,eol,start
set expandtab "Expand tabs to spaces
set tabstop=4 "tabs are 4 spaces wide
set softtabstop=4 "this makes backspace delete all 4 space characters
set shiftwidth=4 "makes >> and << use 4 spaces as well
set ofu=syntaxcomplete#Complete " Enable Omnicomplete for all languages

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
