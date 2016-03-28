 set nocompatible
filetype off

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"let path = '~/some/path/here'
"call vundle#rc(path)

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" Keep Plugin commands between here and filetype plugin indent on.
Plugin 'scrooloose/nerdtree'
" Plugin 'vim-scripts/ScrollColors'
Plugin 'plasticboy/vim-markdown'
Plugin 'majutsushi/tagbar'
Plugin 'kien/ctrlp.vim'
Plugin 'tpope/vim-endwise'
Plugin 'scrooloose/syntastic'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-cucumber'
Plugin 'bling/vim-airline'
Plugin 'tpope/vim-fugitive'
Plugin 'bling/vim-bufferline'
Plugin 'pangloss/vim-javascript'
" Plugin 'nathanaelkane/vim-indent-guides'
Plugin 'altercation/vim-colors-solarized'
Plugin 'tpope/vim-ragtag'
Plugin 'editorconfig/editorconfig-vim'
Plugin 'tpope/vim-commentary'
Plugin 'Raimondi/delimitMate'
Plugin 'mileszs/ack.vim'
Plugin 'tpope/vim-rails'
Plugin 'sjl/gundo.vim'
Plugin 'rking/ag.vim'
Plugin 'Chun-Yang/vim-action-ag'

call vundle#end()
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

set cursorline
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
" colorscheme navajo-night
set t_Co=256
set noesckeys

set lcs=tab:▶\ ,trail:-,eol:$ 
set list!

let g:ctrlp_cache_dir = $HOME . '/.cache/ctrlp'
if executable('ag')
    let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'
endif

" solarized options
if has("gui_running")
    let g:solarized_termtrans=1
    let g:solarized_termcolors=256
else
    let g:solarized_termtrans=1
    let g:solarized_termcolors=16
endif
set background=dark
colorscheme solarized

" allows cursor change in tmux mode
if exists('$TMUX')
  let &t_SI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=1\x7\<Esc>\\"
  let &t_EI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=0\x7\<Esc>\\"
else
  let &t_SI = "\<Esc>]50;CursorShape=1\x7"
  let &t_EI = "\<Esc>]50;CursorShape=0\x7"
endif

nnoremap <Leader>n :NERDTreeToggle<CR>
nnoremap <Leader>t :TagbarToggle<CR>

" toggle gundo
nnoremap <leader>u :GundoToggle<CR>

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
let g:airline#extensions#bufferline#enabled = 1

let g:syntastic_html_tidy_ignore_errors=[" proprietary attribute \"ng-"]
let g:syntastic_javascript_checkers = ['eslint']

set laststatus=2
