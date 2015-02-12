 set nocompatible
filetype off

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
" alternatively, pass a path where Vundle should install plugins
"let path = '~/some/path/here'
"call vundle#rc(path)

" let Vundle manage Vundle, required
Plugin 'gmarik/vundle'

" Keep Plugin commands between here and filetype plugin indent on.
Plugin 'scrooloose/nerdtree'
" Plugin 'vim-scripts/ScrollColors'

Plugin 'plasticboy/vim-markdown'

Plugin 'majutsushi/tagbar'

Plugin 'kien/ctrlp.vim'

filetype plugin indent on     " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList          - list configured plugins
" :PluginInstall(!)    - install (update) plugins
" :PluginSearch(!) foo - search (or refresh cache first) for foo
" :PluginClean(!)      - confirm (or auto-approve) removal of unused plugins
"
" see :h vundle for more details or wiki for FAQ
" NOTE: comments after Plugin commands are not allowed.
" Put your stuff after this line

" call pathogen#runtime_append_all_bundles()
call pathogen#infect()
call pathogen#helptags()
syntax on
set autoindent
set number
set hls
nnoremap <CR> :noh<CR><CR>
set ignorecase
set smartcase
set tabstop=2
set shiftwidth=2
set expandtab
set wildmenu

nnoremap <Leader>n :NERDTreeToggle<CR>
nnoremap <Leader>t :TagbarToggle<CR>

"" for horizontal scroll
"" set go+=b
"" set nowrap

""""""""""""""""""""""""""""""
" airline
""""""""""""""""""""""""""""""
" let g:airline_theme             = 'powerlineish'

" let g:airline_branch_prefix     	= '<'
" let g:airline_readonly_symbol   	= '<'
" let g:airline_linecolumn_prefix 	= '<'

let g:airline_left_sep 				= '▶'
let g:airline_left_alt_sep      	= '>'
let g:airline_right_sep			 	= '◀'
let g:airline_right_alt_sep     	= '<'

if !exists('g:airline_symbols')
	let g:airline_symbols = {}
endif

let g:airline_symbols.linenr = '␊'
let g:airline_symbols.linenr = '␤'
let g:airline_symbols.linenr = '¶'
let g:airline_symbols.branch = '⎇'
let g:airline_symbols.paste = 'ρ'
let g:airline_symbols.paste = 'Þ'
let g:airline_symbols.paste = '∥'
let g:airline_symbols.whitespace = 'Ξ'

let g:airline#extensions#branch#enabled = 1
let g:airline#extensions#syntastic#enabled = 1

set laststatus=2
