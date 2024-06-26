syntax enable

" Plugins
call plug#begin()

" Color Theme
set termguicolors
Plug 'sainnhe/everforest'

" Airline
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" TPope
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-commentary'

" Vim Pencil
Plug 'preservim/vim-pencil'

" Astro 
Plug 'wuelnerdotexe/vim-astro'

call plug#end()

let g:airline_theme = 'everforest'

" Options
colorscheme everforest
set background=light
let g:everforest_background='hard'

" General
set number	" Show line numbers
set linebreak	" Break lines at word (requires Wrap lines)
set showbreak=+++	" Wrap-broken line prefix
set textwidth=80	" Line wrap (number of cols)
set showmatch	" Highlight matching brace
" set spell	" Enable spell-checking

set hlsearch	" Highlight all search results
set smartcase	" Enable smart-case search
set ignorecase	" Always case-insensitive
set incsearch	" Searches for strings incrementally

set autoindent	" Auto-indent new lines
set expandtab	" Use spaces instead of tabs
set shiftwidth=4	" Number of auto-indent spaces
set smartindent	" Enable smart-indent
set smarttab	" Enable smart-tabs
set softtabstop=4	" Number of spaces per Tab

"" Advanced
set ruler	" Show row and column ruler information

set undolevels=1000	" Number of undo levels
set backspace=indent,eol,start	" Backspace behaviour
