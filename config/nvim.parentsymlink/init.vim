"dein Scripts-----------------------------
if &compatible
  set nocompatible               " Be iMproved
endif

" Required:
set runtimepath^=/home/est/.vim/bundle/repos/github.com/Shougo/dein.vim

" Required:
call dein#begin(expand('/home/est/.vim/bundle'))

" Let dein manage dein
" Required:
call dein#add('Shougo/dein.vim')

" Add or remove your plugins here:
" call dein#add('Shougo/neosnippet.vim')
" lovely colorscheme
call dein#add('altercation/vim-colors-solarized')
" surround text with brackets and tags
call dein#add('tpope/vim-surround')
" Align text at specific symbols
call dein#add('godlygeek/tabular')
" enable folding in python
call dein#add('https://github.com/vim-scripts/python_fold')
" lightweight powerline
call dein#add('vim-airline/vim-airline')

" Required:
call dein#end()

" Required:
filetype plugin indent on

" If you want to install not installed plugins on startup.
"if dein#check_install()
"  call dein#install()
"endif

syntax on

" code folding
set foldmethod=indent
set foldlevel=99

" split window movement
map <c-j> <c-w>j
map <c-k> <c-w>k
map <c-l> <c-w>l
map <c-h> <c-w>h

" solarized colorscheme
set background=dark
colorscheme solarized

" use the system clipboard for all copy/paste operations
set clipboard=unnamedplus

" get linenumbers
set nu

" tabstopwidth
set ts=2
set shiftwidth=2
set softtabstop=2
set smarttab
set expandtab

autocmd FileType make setlocal ts=4 sts=4 sw=4 noexpandtab

" highlight the current cursor line
set cursorline

" enable all python highlighting features
let python_highlight_all = 1

" highlight all search matches
set hlsearch

" change the whitespace chars for list
set listchars=tab:▸\ ,eol:¬,trail:⌴,conceal:-,nbsp:⌴

" allow switching between unsaved buffers
set hidden

" dont break words at the lineend
set linebreak
" use par as formatting program with line width 80, inserting spaces for empty
" comment lines and handling nested email comments well
set formatprg=par\ -w80rq

" airline font integration
let g:airline_powerline_fonts = 1

" scroll only 8 lines with crtl-d/u
set scroll=8

" unfold using the spacebar
nnoremap <Space> za
vnoremap <Space> za

" change cursor shape with modes
:let $NVIM_TUI_ENABLE_CURSOR_SHAPE=1
