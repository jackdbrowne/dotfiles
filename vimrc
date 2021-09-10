" Author: Jack Browne
" Created: 12th November 2015

set nocompatible " Don't try to be vi compatible. This must be first
"Plugins {{{
filetype off
source $HOME/.vim/plug.vim
filetype plugin indent on " Enable filetype detection
" }}}
" Colours {{{
let base16colorspace=256

set background=dark
colorscheme base16-eighties " Use the same colorscheme as in the terminal

syntax enable " Turn syntax highlighting on

" }}}
" Whitespace {{{

set tabstop=2 " Number of spaces displayed by a TAB
set softtabstop=2 " Number of spaces in a TAB when editing
set expandtab " TABs are spaces
" }}}
" UI tweaks {{{
set backspace=indent,eol,start " Allow backspace to work accross new lines and indentation

set number " Show line numbers

set hidden " Allow hidden buffers, don't limit to 1 file per window

set laststatus=2
set noshowmode
"}}}
"Keybindings {{{
map j gj
map k gk
"}}}
" Airline {{{
let g:airline_powerline_fonts=1
let g:airline#extensions#syntastic#enabled=1
" }}}
" Syntastic {{{
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
" }}}
" LaTeX {{{
let g:tex_flavor='latex' " Always default to tex filetype
" }}}
set modelines=1
" vim:foldmethod=marker:foldlevel=0
