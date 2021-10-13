" ----------------------------------------------------------------------------
"   Plug
" ----------------------------------------------------------------------------

" Install vim-plug if we don't arlready have it
let data_dir = has('nvim') ? stdpath('data') . '/site' : '~/.vim'
if empty(glob(data_dir . '/autoload/plug.vim'))
  silent execute '!curl -fLo '.data_dir.'/autoload/plug.vim --create-dirs  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.vim/plugged')

" Colorschemes
Plug 'captbaritone/molokai'
Plug 'chriskempson/base16-vim'
Plug 'flazz/vim-colorschemes'
Plug 'joshdick/onedark.vim', { 'branch': 'main'}
Plug 'morhetz/gruvbox'

" Syntastic: Code linting errors
Plug 'scrooloose/syntastic', { 'for': ['c', 'php', 'python', 'javascript', 'css', 'puppet'] }

" YouCompleteMe for completion
" Plug 'valloric/youcompleteme'

" LaTeX plugin
Plug 'vim-latex/vim-latex', { 'for' : 'tex' }

" Fancy statusline
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" Fuzzy file opener
Plug 'preservim/nerdtree'
Plug 'ctrlpvim/ctrlp.vim'

" Make commenting easier
Plug 'tpope/vim-commentary'

" Fugitive: Git from within Vim
Plug 'tpope/vim-fugitive'

" Scratch buffer
Plug 'duff/vim-scratch'

"filetype plugin indent on                   " required!
call plug#end()
