 syntax on
:set number
call plug#begin('~/.vim/plugged')
Plug 'cocopon/iceberg.vim'
call plug#end()
Plug 'Valloric/YouCompleteMe', { 'do': './install.py --tern-completer' }
Plug 'kien/ctrlp.vim'
Plug 'Valloric/YouCompleteMe', { 'do': './install.py --tern-completer' }
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'
Plug 'scrooloose/nerdtree'
Plug 'kien/ctrlp.vim'
Plug 'mhinz/vim-grepper'
Plug 'arcticicestudio/nord-vim'
colorscheme iceberg
