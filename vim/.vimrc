execute pathogen#infect()
set nocompatible
syntax on
filetype plugin indent on
set relativenumber
colorscheme cobalt2 
set wildmenu " auto completion
set showcmd " show hints for your current command
set hidden " allows hiding current buffer, makes it easier to switch between files

" ----- Search options -----
" Use case insensitive search, except when using capital letters
set ignorecase
set smartcase

" Highlight searches (use <C-L> to temporarily turn off highlighting; see the
" mapping of <C-L> below)
set hlsearch

" ----- Usability options -----
" Allow backspacing over autoindent, line breaks and start of insert action
set backspace=indent,eol,start
 
" When opening a new line and no filetype-specific indenting is enabled, keep
" the same indent as the line you're currently on. Useful for READMEs, etc.
set autoindent
 
" Prevent the cursor from changing the current column when jumping to other lines within the window.
set nostartofline

" Set the command window height to 2 lines, to avoid many cases of having to
" "press <Enter> to continue"
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


" ----- Indentation settings -----
set tabstop=4       " The width of a TAB is set to 4.
                    " Still it is a \t. It is just that
                    " Vim will interpret it to be having
                    " a width of 4.

set shiftwidth=4    " Indents will have a width of 4

set softtabstop=4   " Sets the number of columns for a TAB

set expandtab       " Expand TABs to spaces


" ----- Key bindings -----
" Make Shift-Tab work in insert mode
inoremap <S-Tab> <C-d> 

" Map Y to act like D and C, i.e. to yank until EOL, rather than act as yy,
" which is the default
map Y y$
 
" Map <C-L> (redraw screen) to also turn off search highlighting until the
" next search
nnoremap <C-L> :nohl<CR><C-L>

" Exit mode with jk
inoremap jj <Esc>
