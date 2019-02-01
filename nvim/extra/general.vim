" highlight column 80
set colorcolumn=80
set columns=80

" set utf-8 encoding
set encoding=utf-8

" Allow clipboard
set clipboard^=unnamedplus

" Hybrid Numbering
set relativenumber
set number

" Set to auto read when a file is changed from the outside
set autoread

" Configure backspace so it acts as it should act
set backspace=eol,start,indent
set whichwrap+=<,>,h,l

" Ignore case when searching
set ignorecase

" Use Unix line endings
set fileformats=unix,dos,mac

" When searching try to be smart about cases 
set smartcase

" Search like browsers do
set incsearch

" Show types of whitespaces
set list listchars=tab:❘-,trail:· ",extends:»,precedes:«,nbsp:×

" Show matchlng brackets when text indicator is over them
set showmatch

" How many tenths of a second to blink when matching brackets
set mat=2

" No annoying sound on errors
set noerrorbells
set novisualbell
set t_vb=
set tm=500

" Highlight cursor line/column
set cursorline
set cursorcolumn

" Set current directory to store swapfiles
set directory=.//

" tab configs
set expandtab
set smarttab
set shiftwidth=2
set tabstop=2

" Make powerline look pretty
set laststatus=2 " Always display the statusline in all windows
set showtabline=2 " Always display the tabline, even if there is only one tab

" Set indent rules per filetype
filetype indent on

" Set persistent undo directory
set undodir=~/.config/nvim/undodir
set undofile

" Prevent cursor updates
set guicursor=

" Setting window split locations
set splitbelow
set splitright

" Enable code folding
set foldmethod=indent
set foldlevel=99
