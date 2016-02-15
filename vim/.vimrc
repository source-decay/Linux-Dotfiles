" my VIM configuration file - embrace the darkness

" Mappings
inoremap jk <ESC>
let mapleader="\<Space>"

" Syntax
filetype plugin indent on
syntax enable

" Basics
set title
set ruler
set encoding=utf-8
set shell=/bin/bash
set number
set spell spelllang=en_us
set wrap

" Formatting
set autoindent
set ignorecase
set smartcase
set textwidth=80

set softtabstop=2
set shiftwidth=2
set expandtab

set laststatus=2
set modeline
set showmode
set showcmd

" Settings for indentLine formatting
let g:indent_guides_start_level=2
let g:indent_guides_guide_size=1

" Extra Javascript syntax highlighting
let g:used_javascript_libs = 'angularjs,jasmine,jquery'
autocmd BufReadPre *.js let b:javascript_lib_use_angularjs = 1
autocmd BufReadPre *.js let b:javascript_lib_use_jquery = 1

" Set SpellBad to underline misspelled instead of highlight so I don't have to
" fiddle with highlighting colors.
hi clear SpellBad
hi SpellBad cterm=underline

" Kill bracket match highlighting and replace with underlining
hi MatchParen cterm=underline ctermbg=none ctermfg=none 

" Plug in calls via Vim-Plug
call plug#begin('~/dotfiles/vim/.vim/plugged')
  Plug 'tpope/vim-vinegar'
  Plug 'Yggdroot/indentLine' 
  Plug 'othree/javascript-libraries-syntax.vim'
call plug#end()
