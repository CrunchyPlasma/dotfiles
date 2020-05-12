"Split file up using
"source /path/to/file
source ~/.config/nvim/snippets/snippets.vim

set nocompatible
" Use spaces instead of tabs
set expandtab

" Be smart when using tabs ;)
set smarttab

" 1 tab == 4 spaces
set shiftwidth=4
set tabstop=4

set number
set smartcase

syntax enable
filetype plugin on

" allows recursive find
set path=**

" Use MakeTags to generate tags file
command! MakeTags !ctags -R .
" ^] jumps to definition
" g^] shows all definitions for curent tag 
" ^t jumps back

" Auto complete:
" documentation ins-completion
" automatically reads tags file
" ^n and ^p brings up autocomplete
" ^x^n just current file
" ^x^f filenames
" ^x^] tags only
" ^x^k dictionary
" ^x-s spelling

" TODO implement some abbreviations (see help)
