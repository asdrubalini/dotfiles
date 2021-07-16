set tabstop=4       " number of visual spaces per TAB
set softtabstop=4   " number of spaces in tab when editing
set shiftwidth=4    " number of spaces to use for autoindent
set expandtab       " tabs are space
set autoindent
set copyindent      " copy indent from the previous line

" Clipboard
nmap <c-c> "+y
vmap <c-c> "+y
nmap <c-v> "+p
inoremap <c-v> <c-r>+
cnoremap <c-v> <c-r>+
inoremap <c-r> <c-v>

" Neovide font
set guifont=Code\ New\ Roman:h24

set nocompatible               " be improved, required
filetype off                   " required
" set the runtime path to include Vundle and initialize
set rtp+=~/.config/nvim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'bling/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'scrooloose/nerdtree'
" Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-commentary'

" Start of plugins
Plugin 'morhetz/gruvbox'

Plugin 'tpope/vim-fugitive'
Plugin 'neoclide/coc.nvim', {'branch': 'release'}
Plugin 'sheerun/vim-polyglot'

Plugin 'tbastos/vim-lua'


" End of plugins
call vundle#end()
filetype plugin indent on

colorscheme gruvbox
let g:airline_theme='gruvbox'

