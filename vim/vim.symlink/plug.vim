" ----------------------------------------------------------------------------
"   Plug
" ----------------------------------------------------------------------------

" Install vim-plug if we don't arlready have it
if empty(glob("~/.vim/autoload/plug.vim"))
    " Ensure all needed directories exist  (Thanks @kapadiamush)
    silent !mkdir -p ~/.vim/plugged
    silent !mkdir -p ~/.vim/autoload
    " Download the actual plugin manager
    execute '!curl -fLo ~/.vim/autoload/plug.vim https://raw.github.com/junegunn/vim-plug/master/plug.vim'
endif

call plug#begin('~/.vim/plugged')

" Colorschemes
Plug 'captbaritone/molokai'
Plug 'chriskempson/base16-vim'

" Syntastic: Code linting errors
Plug 'scrooloose/syntastic', { 'for': ['c', 'php', 'python', 'javascript', 'css', 'puppet'] }

" YouCompleteMe for completion
Plug 'valloric/youcompleteme'

" LaTeX plugin
Plug 'vim-latex/vim-latex', { 'for' : 'tex' }

" Fancy statusline
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" Fuzzy file opener
Plug 'ctrlpvim/ctrlp.vim'

" Make commenting easier
Plug 'tpope/vim-commentary'

" Fugitive: Git from within Vim
Plug 'tpope/vim-fugitive'

" Add puppet support
Plug 'rodjek/vim-puppet', { 'for' : 'puppet' }

" Scratch buffer
Plug 'duff/vim-scratch'

filetype plugin indent on                   " required!
call plug#end()
