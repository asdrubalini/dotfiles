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

" system clipboard
nmap <c-c> "+y
vmap <c-c> "+y
nmap <c-v> "+p
inoremap <c-v> <c-r>+
cnoremap <c-v> <c-r>+
" use <c-r> to insert original character without triggering things like auto-pairs
inoremap <c-r> <c-v>

" Neovide font
set guifont=Code\ New\ Roman:h24

set nocompatible               " be improved, required
filetype off                   " required

call plug#begin()
" Vundle
Plug 'VundleVim/Vundle.vim'

" GUI enhancements
Plug 'itchyny/lightline.vim'
Plug 'machakann/vim-highlightedyank'
Plug 'andymass/vim-matchup'
Plug 'kyazdani42/nvim-web-devicons'

Plug 'tpope/vim-commentary'

" Themes
Plug 'morhetz/gruvbox'
Plug 'RRethy/nvim-base16'

Plug 'tpope/vim-fugitive'
Plug 'sheerun/vim-polyglot'

Plug 'tbastos/vim-lua'
Plug 'preservim/nerdtree'

" Rust
Plug 'junegunn/fzf'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'rust-lang/rust.vim', { 'for': 'rust' }

" Lang
Plug 'cespare/vim-toml'
Plug 'stephpy/vim-yaml'

Plug 'dag/vim-fish'

Plug 'jiangmiao/auto-pairs'
Plug 'machakann/vim-sandwich'
Plug 'frazrepo/vim-rainbow'

Plug 'romgrk/barbar.nvim'

Plug 'f-person/git-blame.nvim'

" End of plugins
call plug#end()

filetype plugin indent on

" Lightline
let g:lightline = {
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ],
      \             [ 'readonly', 'filename', 'modified' ] ],
      \   'right': [ [ 'lineinfo' ],
      \              [ 'percent' ],
      \              [ 'fileencoding', 'filetype' ] ],
      \ },
      \ 'component_function': {
      \   'filename': 'LightlineFilename'
      \ },
      \ }
function! LightlineFilename()
  return expand('%:t') !=# '' ? @% : '[No Name]'
endfunction

" NERDTree
nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>
" Start NERDTree when Vim is started without file arguments.
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists('s:std_in') | NERDTree | wincmd p | endif

" GoTo code navigation.
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Use K to show documentation in preview window.
nnoremap <silent> K :call <SID>show_documentation()<CR>

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  else
    call CocAction('doHover')
  endif
endfunction

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

" Rust
let g:deoplete#enable_at_startup = 1
let g:rustfmt_autosave = 1
let g:rainbow_active = 1

" Quick-save
nmap <A-w> :w<CR>
" Quick quit
nmap <A-q> :q<CR>

" Color scheme
set background=dark
let base16colorspace=256
colorscheme base16-gruvbox-dark-hard
set background=dark
set termguicolors

function! s:check_back_space() abort
    let col = col('.') - 1
    return !col || getline('.')[col - 1]  =~# '\s'
endfunction

