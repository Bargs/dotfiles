call pathogen#infect()
call pathogen#helptags()
syntax on
filetype plugin indent on
filetype plugin on
set number
set guioptions-=T "remove toolbar
set guioptions+=b "enable horizontal scrollbar

"" Whitespace
set nowrap
set backspace=indent,eol,start
set expandtab "Expand tabs to spaces
set tabstop=4 "tabs are 4 spaces wide
set softtabstop=4 "this makes backspace delete all 4 space characters
set shiftwidth=4 "makes >> and << use 4 spaces as well

"" Searching
set hlsearch
set incsearch
set ignorecase

"" Buffers
set hidden
set wildmenu
set wildmode=longest:full

colorscheme molokai
if has('gui_running')
	set guifont=Consolas:h10
endif
