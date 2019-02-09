call plug#begin('~/.nvim/plugged')

function! DoRemote(arg)
  UpdateRemotePlugins
endfunction

"""""""""""""""""
" Functionality "
"""""""""""""""""
Plug 'scrooloose/nerdtree'
Plug 'ervandew/supertab'
Plug 'kien/rainbow_parentheses.vim'
Plug 'martinda/Jenkinsfile-vim-syntax'
Plug 'vim-syntastic/syntastic'

"""""""""""
" Theming "
"""""""""""
Plug 'flazz/vim-colorschemes'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'chriskempson/base16-vim'
Plug 'elixir-lang/vim-elixir'
Plug 'slashmili/alchemist.vim'

"""""""""""""
" Languages/Tools "
"""""""""""""
" Git
Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-fugitive'
Plug 'Xuyuanp/nerdtree-git-plugin'

" tmux
Plug 'christoomey/vim-tmux-navigator'

" golang
Plug 'fatih/vim-go'

call plug#end()

"""""""""""""""""
" Functionality "
"""""""""""""""""
" nerdtree
map <C-n> :NERDTreeToggle<CR>

" deoplete
let g:deoplete#enable_at_startup = 1

" SuperTab
let g:SuperTabDefaultCompletionType = "<c-n>"


"""""""""""
" Theming "
"""""""""""
" vim-colorscheme
colorscheme base16-tomorrow-night

" vim-airline
let g:airline_powerline_fonts = 1
if !exists('g:airline_symbols')
  let g:airline_symbols = {}
endif
"let g:airline_symbols.space = "\ua0"
let g:AirlineTheme='murmur'

" rainbow_parentheses.vim
let g:rbpt_colorpairs = [
    \ ['brown',       'RoyalBlue3'],
    \ ['Darkblue',    'SeaGreen3'],
    \ ['darkgray',    'DarkOrchid3'],
    \ ['darkgreen',   'firebrick3'],
    \ ['darkcyan',    'RoyalBlue3'],
    \ ['darkred',     'SeaGreen3'],
    \ ['darkmagenta', 'DarkOrchid3'],
    \ ['brown',       'firebrick3'],
    \ ['gray',        'RoyalBlue3'],
    \ ['black',       'SeaGreen3'],
    \ ['darkmagenta', 'DarkOrchid3'],
    \ ['Darkblue',    'firebrick3'],
    \ ['darkgreen',   'RoyalBlue3'],
    \ ['darkcyan',    'SeaGreen3'],
    \ ['darkred',     'DarkOrchid3'],
    \ ['red',         'firebrick3'],
    \ ]

au VimEnter * RainbowParenthesesToggle
au Syntax * RainbowParenthesesLoadRound
au Syntax * RainbowParenthesesLoadSquare
au Syntax * RainbowParenthesesLoadBraces

"""""""""""""
" Languages "
"""""""""""""
" ocp-indent
set rtp^="/Users/jfleming/.opam/system/share/ocp-indent/vim"

" ocp-index
set rtp+=/Users/jfleming/.opam/system/share/ocp-index/vim

