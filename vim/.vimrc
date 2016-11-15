" Three double quotes denote a main section
" A double quote followed by two dashes is a subsection
" or a comment on something in that section

""" Mappings
	inoremap jk <ESC>
	nnoremap <C-J> <C-W><C-J>
	nnoremap <C-K> <C-W><C-K>
	nnoremap <C-L> <C-W><C-L>
	nnoremap <C-H> <C-W><C-H>
	let mapleader="\<Space>"
	nnoremap <space>/ :Ag

""" Basics
	set title
	set ruler
	set encoding=utf-8
	set shell=/bin/bash
	set number
	set colorcolumn=120
	set splitbelow
	set splitright
	filetype plugin indent on
	syntax enable

""" Text Editor Related
	set autoindent
	set ignorecase
	set smartcase
	set tabstop=2
	set shiftwidth=2
	set noexpandtab
	set nocompatible
	hi clear SpellBad
	hi SpellBad cterm=underline
	match ErrorMsg '\%>120v.\+'

""" Statusbar-related
	set laststatus=2
	set modeline
	set showmode
	set showcmd

""" Coloring Related
	set background=dark
	let g:lightline = { 'colorscheme': 'flatcolor' }
	highlight ColorColumn ctermbg=3

""" Plugin settings
	"-- IndentLine formatting
	let g:indent_guides_start_level=2
	let g:indent_guides_guide_size=1

	"-- Neomake - Linting
	let g:neomake_javscript_enabled_makers = [ 'eslint' ]
	let g:neomake_open_list=2
	let g:neomale_warning_sign = {
		\ 'text': 'W',
		\ 'texthl': 'WarningMsg',
		\ }
	let g:neomake_error_sign = {
		\ 'text': 'E',
		\ 'texthl': 'ErrorMsg',
		\ }
	autocmd! BufWritePost,BufEnter * Neomake

""" Misc Settings
	"-- Remove trailing whitespace on save
	autocmd BufWritePre * :%s/\s\+$//e
	let loaded_matchparen=1

call plug#begin('~/dotfiles/vim/.vim/plugged')
  Plug 'Yggdroot/indentLine'
  Plug 'itchyny/lightline.vim'
  Plug 'rking/ag.vim'
  Plug 'MaxSt/Flatcolor'
  Plug 'neomake/neomake'
call plug#end()
