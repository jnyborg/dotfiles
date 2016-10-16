" Vundle
" -----------------------------------------------------------------------------
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
Plugin 'junegunn/vim-easy-align'
Plugin 'Valloric/YouCompleteMe'
Plugin 'w0ng/vim-hybrid'

call vundle#end()
filetype plugin indent on  " Enable file type detection.

" Appearance
" -----------------------------------------------------------------------------
syntax on                  " Enable syntax highlighting.
set encoding=utf-8         " Set the character encoding to UTF-8.
set background=dark        " Use colours that look good on a dark background.
set colorcolumn=80         " Show right column in a highlighted colour.
set history=10000          " Number of commands and search patterns to remember.
set laststatus=2           " Always show status line.
set linespace=8            " Increase line height spacing by pixels.
set noshowmode             " Do not show current mode on the last line.
set number                 " Precede each line with its line number.
set relativenumber         " All other line numbers are relative to the current.
set showcmd                " Show command on last line of screen.
set showmatch              " Show matching brackets.
set t_Co=256               " Set the number of supported colours.
set title                  " Set window title to 'filename [+=-] (path) - VIM'.
set ttyfast                " Indicate fast terminal more smoother redrawing"
set visualbell             " Disable beeping, show visual indicators instead.
autocmd BufNewFile,BufRead *.grm   set syntax=sml

" GUI options
" -----------------------------------------------------------------------------
if has('gui_running')
    set guifont=InconsolataGo:h18   " Set the font to use.
    set guioptions=                 " Remove all GUI components and options.
    set guicursor+=a:block-blinkon0 " Use non-blinking block cursor.
    map <D-1> 1gt                   " Change tabs as in Chrome.
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


" Behaviour
" -----------------------------------------------------------------------------
set backspace=2            " Allow <BS> and <Del> over everything.
set hidden                 " Hide when switching buffers instead of unloading.
set mouse=a                " Enable use of the mouse in all modes.
set nowrap                 " Disable word wrap.
set textwidth=0            " Do not break lines after a maximum width.
set wildmenu               " Use enhanced command-line completion."


" Search
" -----------------------------------------------------------------------------
set hlsearch               " Highlight search pattern results.
set ignorecase             " Ignore case of normal letters in a pattern.
set incsearch              " Highlight search pattern as it is typed.
set smartcase              " Override ignorecase if pattern contains upper case.


" Indents and Tabs 
" -----------------------------------------------------------------------------
 set autoindent             " Copy indent from previous line.
 set expandtab              " Replace tabs with spaces in Insert mode.
 set shiftwidth=4           " Spaces for each (auto)indent.
 set smarttab               " Insert and delete sw blanks in the front of a line.
 set softtabstop=4          " Spaces for tabs when inserting <Tab> or <BS>.
 set tabstop=4              " Spaces that a <Tab> in file counts for.


" Mappings - General
" -----------------------------------------------------------------------------

" Make space the leader key
nmap <space> <leader>

" Make Shift-Tab work in insert mode
inoremap <S-Tab> <C-d>

" Map <C-L> (redraw screen) to also turn off search highlighting until the
" next search
nnoremap <C-L> :nohl<CR><C-L>

" Exit mode with jj
inoremap jj <Esc>

" Map Y to act like D and C, i.e. to yank until EOL
map Y y$

" Quickly time out on keycodes, but never time out on mappings
set notimeout ttimeout ttimeoutlen=200


" Mappings - Clipboard 
" -----------------------------------------------------------------------------

 " Delete (cut) to clipboard.
 vnoremap <Leader>x "*x
 nnoremap <Leader>x "*x

 " Yank (copy) to clipboard.
 vnoremap <Leader>y "*y
 nnoremap <Leader>y "*y

 " Put (paste) from clipboard.
 nnoremap <Leader>p "*p
 vnoremap <Leader>p "*p
 nnoremap <Leader><S-P> "*P
 vnoremap <Leader><S-P> "*P)))}


" Plugin Settings - airline 
" -----------------------------------------------------------------------------

let g:airline_left_sep = ''        " Remove arrow symbols.
let g:airline_left_alt_sep = ''    " Remove arrow symbols.
let g:airline_right_sep = ''       " Remove arrow symbols.
let g:airline_right_alt_sep = ''   " Remove arrow symbols.
let g:airline_theme = 'hybridline' " Use hybrid theme.


" Plugin Settings - EasyAlign
" -----------------------------------------------------------------------------
" Start interactive EasyAlign in visual mode (e.g. vipga)
xmap ga <Plug>(EasyAlign)
"
" " Start interactive EasyAlign for a motion/text object (e.g. gaip)
nmap ga <Plug>(EasyAlign)


" Plugin Settings - NERDTree
" -----------------------------------------------------------------------------
" NERDTree toggle on <leader>.
nmap <silent> <leader>. :NERDTreeTabsToggle<CR>


" Plugin Settings - hybrid
" -----------------------------------------------------------------------------

let g:hybrid_custom_term_colors = 1
let g:hybrid_reduced_contrast = 1
colorscheme hybrid
