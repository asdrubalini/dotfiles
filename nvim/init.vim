" General settings
set tabstop=4       " number of visual spaces per TAB
set softtabstop=4   " number of spaces in tab when editing
set shiftwidth=4    " number of spaces to use for autoindent
set expandtab       " tabs are space
set autoindent
set copyindent      " copy indent from the previous line
set number
set nu
set mouse=a

" Clipboard
nmap <c-c> "+y
vmap <c-c> "+y
nmap <c-v> "+p
inoremap <c-v> <c-r>+
cnoremap <c-v> <c-r>+
inoremap <c-r> <c-v>

" Neovide font
set guifont=Fira\ Code\ Nerd\ Font:h24

set nocompatible               " be improved, required
filetype off                   " required

call plug#begin()
Plug 'VundleVim/Vundle.vim'
Plug 'bling/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'tpope/vim-commentary'

Plug 'morhetz/gruvbox'

Plug 'tpope/vim-fugitive'
Plug 'sheerun/vim-polyglot'

Plug 'tbastos/vim-lua'
Plug 'preservim/nerdtree'

Plug 'junegunn/fzf'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'rust-lang/rust.vim', { 'for': 'rust' }

Plug 'jiangmiao/auto-pairs'
Plug 'machakann/vim-sandwich'
Plug 'frazrepo/vim-rainbow'

Plug 'kyazdani42/nvim-web-devicons'
Plug 'romgrk/barbar.nvim'

" End of plugins
call plug#end()

filetype plugin indent on

" NERDTree
nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>
" Start NERDTree when Vim is started without file arguments.
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists('s:std_in') | NERDTree | wincmd p | endif

" Tabs
" Move to previous/next
nnoremap <silent>    <A-,> :BufferPrevious<CR>
nnoremap <silent>    <A-.> :BufferNext<CR>

" Goto buffer in position...
nnoremap <silent>    <A-1> :BufferGoto 1<CR>
nnoremap <silent>    <A-2> :BufferGoto 2<CR>
nnoremap <silent>    <A-3> :BufferGoto 3<CR>
nnoremap <silent>    <A-4> :BufferGoto 4<CR>
nnoremap <silent>    <A-5> :BufferGoto 5<CR>
nnoremap <silent>    <A-6> :BufferGoto 6<CR>
nnoremap <silent>    <A-7> :BufferGoto 7<CR>
nnoremap <silent>    <A-8> :BufferGoto 8<CR>
nnoremap <silent>    <A-9> :BufferLast<CR>

let g:deoplete#enable_at_startup = 1
let g:rustfmt_autosave = 1
let g:rainbow_active = 1

" Color scheme
colorscheme gruvbox
let g:airline_theme='gruvbox'
set background=dark
set termguicolors

function! s:check_back_space() abort
    let col = col('.') - 1
    return !col || getline('.')[col - 1]  =~# '\s'
endfunction

