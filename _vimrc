call pathogen#infect()
call pathogen#helptags()
syntax on
filetype plugin indent on
set number
set guioptions-=T "remove toolbar
set guioptions+=b "enable horizontal scrollbar

"" Whitespace
set nowrap
set backspace=indent,eol,start

"" Searching
set hlsearch
set incsearch
set ignorecase

colorscheme molokai
if has('gui_running')
	set guifont=Consolas:h10
endif
