" Enable 24-bit colors
" important for getting colorschemes to display properly
set termguicolors

" vim-plug - start plugin definition area
call plug#begin('~/.local/share/nvim/plugged')

Plug 'elmcast/elm-vim'
Plug 'raichoo/purescript-vim'
Plug 'larsbs/vimterial_dark'
Plug 'pangloss/vim-javascript'
Plug 'vim-syntastic/syntastic'

" Git integration
Plug 'tpope/vim-fugitive'

" typescript IDE features
Plug 'leafgarland/typescript-vim'
Plug 'Shougo/vimproc.vim', {'do' : 'make'}
Plug 'Quramy/tsuquyomi'

" Complete vim-plug definitions and initialize system
" Remember to :PlugInstall to install plugins
call plug#end()

set number
set laststatus=2
syntax enable
colorscheme znake

"Set tab as 4 space indent...
set smartindent
set tabstop=2
set shiftwidth=2
set expandtab

"Set default zoom level
set guifont=Monaco:h20

map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l

set foldmethod=indent
set foldlevel=0

"Enable mouse
set mouse=a

" vim-javascript settings
"let g:javascript_plugin_jsdoc = 1
let g:javascript_plugin_flow = 1

" disable default quickfix window for typescript
let g:tsuquyomi_disable_quickfix = 1

" Syntastic
let g:syntastic_typescript_checkers = ['tsuquyomi'] " You shouldn't use 'tsc' checker.

" Syntastic recommended beginner settings
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 1

"sync mac clipboard to yank register
set clipboard+=unnamedplus

" Use js syntax highlighting for .json files
autocmd BufNewFile,BufRead *.json set ft=javascript
