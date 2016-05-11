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
set nocompatible

" Formatting
set autoindent
set ignorecase
set smartcase
set softtabstop=2
set shiftwidth=2
set expandtab

" Any characters past 120 per line will be highlighted
match ErrorMsg '\%>120v.\+'

" Status-related
set laststatus=2
set modeline
set showmode
set showcmd

" Settings for indentLine formatting
let g:indent_guides_start_level=2
let g:indent_guides_guide_size=1

" Settings for JavaScript Library Syntax
let g:used_javascript_libs = 'angularjs,jasmine,jquery,underscore'

" Settings for lightline
let g:lightline = { 'colorscheme': 'solarized_dark' }

if !has('gui_running')
  set t_Co=256
endif

" Set SpellBad to underline misspelled
hi clear SpellBad
hi SpellBad cterm=underline

let loaded_matchparen=1

" Remove trailing whitespaces on save
autocmd BufWritePre * :%s/\s\+$//e

" Plug in calls via Vim-Plug
call plug#begin('~/dotfiles/vim/.vim/plugged')
  Plug 'tpope/vim-vinegar'
  Plug 'Yggdroot/indentLine'
  Plug 'pangloss/vim-javascript'
  Plug 'othree/javascript-libraries-syntax.vim'
  Plug 'itchyny/lightline.vim'
  Plug 'leafgarland/typescript-vim'
call plug#end()
