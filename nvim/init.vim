"Split file up using
"source /path/to/file
source ~/.config/nvim/snippets/snippets.vim
source ~/.config/nvim/vim-plug/plug.vim

"plugins
call plug#begin('~/.config/nvimplugs')
Plug 'tpope/vim-surround'
Plug 'airblade/vim-gitgutter'
Plug 'majutsushi/tagbar'
call plug#end()

" Tagbar
nnoremap <silent> <f8> :TagbarToggle<CR>
nnoremap <silent> <f9> :TagbarOpen fjc<CR>

" Be smart when using tabs ;)
set smarttab

set scrolloff=3

" 1 tab == 4 spaces
set shiftwidth=4
set tabstop=4

set number
set ignorecase
set smartcase

syntax enable
filetype plugin indent on

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
