set nocompatible " be iMproved, required
filetype off " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" My plugins here
Plugin 'VundleVim/Vundle.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'jistr/vim-nerdtree-tabs'
Plugin 'tpope/vim-commentary'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-repeat'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'jez/vim-better-sml'
Plugin 'scrooloose/syntastic'
Plugin 'ctrlpvim/ctrlp.vim' " fuzzy finding files
Plugin 'airblade/vim-gitgutter' " git plugin vim airline
Plugin 'Raimondi/delimitMate' " auto match delimiters
Plugin 'altercation/vim-colors-solarized'
Plugin 'chriskempson/base16-vim'
Plugin 'tomasr/molokai'
Plugin 'junegunn/vim-easy-align'
Plugin 'Valloric/YouCompleteMe'


call vundle#end()
filetype plugin indent on
"""" end Vundle plugin stuff """""


"""""""""""""""""""""""""""""""
" bling / vim airline settings
"""""""""""""""""""""""""""""""
syntax on
set background=dark
let g:airline_detect_paste=1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#hunks#non_zero_only = 1
let g:airline_theme='molokai'
let g:airline_left_sep=''
let g:airline_right_sep=''
let NERDTreeMinimalUI = 1
let NERDTreeDirArrows = 1

" Always show statusbar
set laststatus=2

" sml highlighting for .grm file


"""""""""""""""""""""""""""""
" gVim Options
"""""""""""""""""""""""""""""
if has('gui_running')
    set guifont=DejaVu\ Sans\ Mono\ 14
    colorscheme molokai
    set guioptions-=T " remove toolbar
    set guioptions-=r " remove scroll bar
    set guioptions-=L " remove scroll bar
    set guioptions-=m " remove menu bar
    map <D-1> 1gt
    map <D-2> 2gt
    map <D-3> 3gt
    map <D-4> 4gt
    map <D-5> 5gt
    map <D-6> 6gt
    map <D-7> 7gt
    map <D-8> 8gt
    map <D-9> 9gt
    map <D-0> :tablast<CR>]
endif

"""""""""""""""""""""""""""""
" Usability
"""""""""""""""""""""""""""""
" Search
set ignorecase
set smartcase
set hlsearch
set incsearch

" Normal backspace behaviour
set backspace=indent,eol,start

" Tab settings
set expandtab
set smarttab
set autoindent 
" 1 tab = 4 spaces
set shiftwidth=4 
set tabstop=4

" Bracket highlighting
set showmatch
set matchtime=2

" Save swp files elsewhere
set swapfile
set dir=~/tmp

" Auto completion
set wildmenu 

" Line number and cursorline
set number
set relativenumber
set cursorline

" Misc
set nostartofline
set visualbell
set ruler
" Quickly time out on keycodes, but never time out on mappings
set notimeout ttimeout ttimeoutlen=200


"""""""""""""""""""""""""""""
" Key bindings
"""""""""""""""""""""""""""""
" Make Shift-Tab work in insert mode
inoremap <S-Tab> <C-d>

" Map <C-L> (redraw screen) to also turn off search highlighting until the
" next search
nnoremap <C-L> :nohl<CR><C-L>

" Exit mode with jk
inoremap jk <Esc>

" Map Y to act like D and C, i.e. to yank until EOL, rather than act as yy,
" which is the default
map Y y$

" Make space the leader key
nmap <space> <leader>

" Start interactive EasyAlign in visual mode (e.g. vipga)
xmap ga <Plug>(EasyAlign)
"
" " Start interactive EasyAlign for a motion/text object (e.g. gaip)
nmap ga <Plug>(EasyAlign)

" NERDTree toggle on <leader>.
nmap <silent> <leader>. :NERDTreeTabsToggle<CR>

autocmd BufNewFile,BufRead *.grm   set syntax=sml
