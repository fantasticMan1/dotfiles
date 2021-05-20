" Neovim init.vim
" Author: Josh Winebrener
" Derived from:
" - https://dev.to/stevejoachim/what-do-the-top-250-vimrc-s-have-in-common-58kf
" - https://vim.fandom.com/wiki/Example_vimrc
" - http://derekwyatt.org/2009/08/20/the-absolute-bare-minimum/

" ==== PLUGINS ====
call plug#begin('~/.vim/plugged')

Plug 'ervandew/supertab'

Plug 'vim-airline/vim-airline'

Plug 'ctrlpvim/ctrlp.vim'

call plug#end()

let g:airline_powerline_fonts=1

" ==== OPTIONS ====

" Always use Vim, never Vi
set nocompatible

" Fix weird backspace behavior
set backspace=indent,eol,start

" Do not discard buffer before editing a new one
set hidden

" Use airline for tabs as well
let g:airline#extensions#tabline#enabled = 1

" Don't redraw in all instances
set lazyredraw

" I find swap files painful
set noswapfile

" Save undo history after closing a buffer
set undofile

" Enable syntax highlighting
if has('syntax')
  syntax on
endif

" Tab settings.  Use 4 spaces instead of 1 tab.
set expandtab
set shiftwidth=4
set tabstop=4

" If there are multiple matches when autocompleting, list them all and
" complete the longest section that they all agree on
set wildmode
set wildmode=list:longest

" Attempt to infer file type
if has('filetype')
  filetype indent plugin on
endif

" modelines aren't very useful to me, and they seem to introduce
" vulnerabilities
set nomodeline

" Make search case significant only if uppercase
set ignorecase
set smartcase

" When opening a new line, carry over the indent of the current line
set autoindent

" Confirm before closing an unsaved buffer
set confirm

" Use visual bell instead of beeping when doing something wrong
set visualbell

" Enable use of the mouse for all modes
if has('mouse')
  set mouse=a
endif

" Set the command window height to 2 lines, to avoid many cases of having to
" "press <Enter> to continue"
set cmdheight=2

" Display line numbers on the left
set number

" Quickly time out on keycodes, but never time out on mappings
set notimeout ttimeout ttimeoutlen=200

" ==== MAPPTINGS ====

" Make 'Y' consistent with 'C' and 'D'
map Y y$

" Save a keystroke on window navigation
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" If a line wraps around the screen, j and k should go to the wrapped section,
" not the next line
nnoremap j gj
nnoremap k gk

" Remain in visual mode when indenting blocks
vnoremap < <gv
vnoremap > >gv

