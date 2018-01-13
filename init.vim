set nocompatible
filetype off

" Plugins
"
" Specify a directory for plugins (for vim: ~/.vim/plugged)
call plug#begin('~/.local/share/nvim/plugged')

Plug 'scrooloose/nerdtree'
" Plug 'vim-scripts/ScrollColors'
Plug 'majutsushi/tagbar'
Plug 'kien/ctrlp.vim'
Plug 'tpope/vim-endwise'
Plug 'scrooloose/syntastic'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-cucumber'
Plug 'bling/vim-airline'
Plug 'tpope/vim-fugitive'
Plug 'bling/vim-bufferline'
Plug 'pangloss/vim-javascript'
" Plug 'nathanaelkane/vim-indent-guides'
Plug 'altercation/vim-colors-solarized'
Plug 'tpope/vim-ragtag'
Plug 'editorconfig/editorconfig-vim'
Plug 'tpope/vim-commentary'
Plug 'Raimondi/delimitMate'
Plug 'mileszs/ack.vim'
Plug 'tpope/vim-rails'
Plug 'sjl/gundo.vim'
Plug 'rking/ag.vim'
Plug 'Chun-Yang/vim-action-ag'
" Scala syntax highlighting and some other goodies
Plug 'derekwyatt/vim-scala'
Plug 'leafgarland/typescript-vim'
Plug 'kovisoft/slimv'
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'ervandew/supertab'
Plug 'carlitux/deoplete-ternjs'

" Initialize plugin system
call plug#end()

" End Plugins

syntax on

" Deoplete configuration
" https://www.gregjs.com/vim/2016/neovim-deoplete-jspc-ultisnips-and-tern-a-config-for-kickass-autocompletion/

" deoplete config
let g:deoplete#enable_at_startup = 1
let g:deoplete#omni#functions = {}
let g:deoplete#omni#functions.javascript = [
  \ 'tern#Complete'
\]

" deoplete-ternjs config
let g:tern_request_timeout = 1
let g:tern_show_signature_in_pum = '0'  " This do disable full signature type on autocomplete

"Add extra filetypes
let g:tern#filetypes = [
                \ 'jsx',
                \ 'javascript.jsx',
                \ 'vue',
                \ '...'
                \ ]

set completeopt=longest,menuone,preview
let g:deoplete#sources = {}
let g:deoplete#sources['javascript.jsx'] = ['file', 'buffer', 'ternjs']

" Disable preview window
set completeopt-=preview
"
" End Deoplete configuration

set cursorline
set cursorcolumn
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

" keyboard shortcuts for :Ag
" search for word under cursor in normal mode
nnoremap <leader>a :Ag<CR>
" search for selected text in visual mode
vnoremap <leader>a y :Ag <C-R>"<CR>

" pipe current buffer contents through jq to format json
nnoremap <leader>J :%!jq . <CR>

" use // to search for visually selected text, ignoring magic characters,
" escaping back-slash characters
" Simpler version to show what this does without ignoring magic chars and
" excaping
" vnoremap // y/<C-R>"<CR>
vnoremap <expr> // 'y/\V'.escape(@",'\').'<CR>'

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
