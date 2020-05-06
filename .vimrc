set shell=/bin/bash

"""""""" Vundle
if isdirectory(expand('~/.vim/bundle/Vundle.vim/.git'))
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

Plugin 'dag/vim-fish'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
endif
""""""""

" Pylint integration (Ctrl+P to manually scan, automatically started when saving files )
" Requires Pylint plugin, http://www.vim.org/scripts/script.php?script_id=891
" autocmd FileType python compiler pylint
"map <c-P> :Pylint<CR>                      
"let g:pylint_cwindow = 1 " set to 0 to disable auto 'cwindow' opening, open manually with :cwindow

" tab navigation
map tj :tabnext<CR>
map tl :tabnext<CR>
map <c-.> :tabnext<CR>
map tk :tabprev<CR>
map th :tabprev<CR>
map <c-,> :tabprev<CR>
map tn :tabnew<CR>
map <c-t> :tabnew<CR>
map td :tabclose<CR>
map <c-w> :tabclose<CR>

" Cool vim colors - requires 256 color support (bad for console) and putting the colorschme in ~/.vim/colors:
" http://slinky.imukuppi.org/zenburn/zenburn.vim
" uncomment the following:
set t_Co=256
colorscheme zenburn
let g:zenburn_high_Contrast = 1

" actionscript
au BufNewFile,BufRead *.as              set filetype=actionscript
autocmd FileType actionscript set omnifunc=actionscriptcomplete#CompleteAS
autocmd FileType actionscript :set dictionary=$HOME/vimfiles/dict/actionscript.dict

" pathgen
execute pathogen#infect()

""""""""
set shiftround
set hlsearch showmatch
set softtabstop=2
set tabstop=2
set shiftwidth=2
set shiftround
set textwidth=120
set colorcolumn=+0        " Highlight the textwidth column (req. VIM 7.3)
set ignorecase
set smartcase               " Be case insensitive as long as search-string is lowercase
set autoindent smartindent
set incsearch
set wildmenu 
set wildignore=*.pyc
set modeline
set nocompatible
set number
set paste
filetype plugin on
filetype indent on
syntax on
set expandtab
