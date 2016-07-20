set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" My plugins here
Plugin 'VundleVim/Vundle.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'tpope/vim-commentary'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-sensible'



call vundle#end()            
filetype plugin indent on   

" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" end Vundle plugin stuff 

syntax on
colorscheme cobalt2 
set wildmenu " auto completion
set showcmd " show hints for your current command
set hidden " allows hiding current buffer, makes it easier to switch between files

"""""""""""""""""""""""""""""
" gVim Options
"""""""""""""""""""""""""""""

set guioptions-=T " remove toolbar
set guioptions-=r " remove scroll bar
set guioptions-=L " remove scroll bar
set guioptions-=m " remove menu bar
set guifont=Monospace\ 12

"""""""""""""""""""""""""""""
" Search options
"""""""""""""""""""""""""""""

" Use case insensitive search, except when using capital letters
set ignorecase
set smartcase

" Highlight searches (use <C-L> to temporarily turn off highlighting; see the
" mapping of <C-L> below)
set hlsearch

"""""""""""""""""""""""""""""
" Usability options
"""""""""""""""""""""""""""""

" Allow backspacing over autoindent, line breaks and start of insert action
set backspace=indent,eol,start
 
" When opening a new line and no filetype-specific indenting is enabled, keep
" the same indent as the line you're currently on. Useful for READMEs, etc.
set autoindent
 
" Prevent the cursor from changing the current column when jumping to other lines within the window.
set nostartofline

" Set the command window height to 2 lines, to avoid many cases of having to
" press <Enter> to continue
set cmdheight=2

" Use visual bell instead of beeping when doing something wrong
set visualbell

" Quickly time out on keycodes, but never time out on mappings
set notimeout ttimeout ttimeoutlen=200

" Instead of failing a command because of unsaved changes, instead raise a
" dialogue asking if you wish to save changed files.
set confirm

" Display the cursor position on the last line of the screen or in the status
" line of a window
set ruler

"""""""""""""""""""""""""""""
" Line number and cursorline
"""""""""""""""""""""""""""""
set nu
set relativenumber
set cursorline


" ----- Indentation settings -----
set tabstop=4       " The width of a TAB is set to 4.
                    " Still it is a \t. It is just that
                    " Vim will interpret it to be having
                    " a width of 4.

set shiftwidth=4    " Indents will have a width of 4

set softtabstop=4   " Sets the number of columns for a TAB

set expandtab       " Expand TABs to spaces


"""""""""""""""""""""""""""""
" Key bindings
"""""""""""""""""""""""""""""
"
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

"""""""""""""""""""""""""""""
" NERDTree
"""""""""""""""""""""""""""""

" NERDTree toggle on <leader>.
nnoremap <leader>. :NERDTreeToggle<CR>

" Set size for NERDTree window
:let g:NERDTreeWinSize=40

" Autostart NERDTree when vim starts
autocmd VimEnter * NERDTree | wincmd p

" Close vim when Nerdtree only window left
autocmd BufEnter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
