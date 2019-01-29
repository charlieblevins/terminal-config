" Enable 24-bit colors
" important for getting colorschemes to display properly
set termguicolors

" vim-plug - start plugin definition area
call plug#begin('~/.local/share/nvim/plugged')

" elm language
Plug 'elmcast/elm-vim'

" purescript language
Plug 'raichoo/purescript-vim'

" color scheme
Plug 'larsbs/vimterial_dark'
Plug 'christophermca/meta5'
Plug 'YorickPeterse/happy_hacking.vim'
Plug 'morhetz/gruvbox'
Plug 'drewtempelmeyer/palenight.vim'
Plug 'fortes/vim-escuro'
Plug 'ayu-theme/ayu-vim'
Plug 'KabbAmine/yowish.vim'
Plug 'w0ng/vim-hybrid'

" javascript helpers
Plug 'pangloss/vim-javascript'

" linting/type-checking helper
Plug 'vim-syntastic/syntastic'

" Git integration
Plug 'tpope/vim-fugitive'

" typescript syntax highlighting
Plug 'leafgarland/typescript-vim'

" concurrency abilities - not sure if needed in nvim
Plug 'Shougo/vimproc.vim', {'do' : 'make'}

" typescript IDE server
Plug 'Quramy/tsuquyomi'

" typescript syntax file
Plug 'HerringtonDarkholme/yats.vim'
Plug 'mhartington/nvim-typescript', {'do': './install.sh'}
" For async completion
Plug 'Shougo/deoplete.nvim'
" For Denite features
Plug 'Shougo/denite.nvim'

" Complete vim-plug definitions and initialize system
" Remember to :PlugInstall to install plugins
call plug#end()

" Enable deoplete at startup
let g:deoplete#enable_at_startup = 1

" turn on numbers
set number
set laststatus=2
syntax enable

" default colorscheme
colorscheme hybrid
" colorscheme ayu
" colorscheme znake
" colorscheme gruvbox 

"Set tab as 4 space indent...
set smartindent
set tabstop=2
set shiftwidth=2
set expandtab

set guifont=Monaco:h20

" helpers for moving between splits
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l

" fold according to indentation
set foldmethod=indent
" start with all folds open - use zM to close all
set foldlevel=99

" not sure if this works yet - should cause folds
" to open if contained content matches a search
set foldopen=search

"Enable mouse
set mouse=a

" vim-javascript settings
"let g:javascript_plugin_jsdoc = 1
" support flow js types
let g:javascript_plugin_flow = 1

" disable default quickfix window for typescript
let g:tsuquyomi_disable_quickfix = 1

" not sure if this works
autocmd FileType typescript nmap <buffer> <Leader>t : <C-u>echo tsuquyomi#hint()<CR>

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
