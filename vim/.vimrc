" ---------------------------------------------------
" Must have options
set nocompatible
set hidden
syntax on
set encoding=utf-8

" load filetype specific indent files in .vim/ftplugin
filetype indent plugin on

" visual autocomplete when tabbing in command mode
set wildmenu

" show last command in Vim
set showcmd

colorscheme vividchalk


" ---------------------------------------------------
" Usability options

" case insensitive search
set ignorecase
set smartcase

" search as chars are entered
set incsearch

" highlight matches
set hlsearch

set autoindent

" allow backspacing over autoindent, line breaks and start of insert action
set backspace=indent,eol,start

" stop certain movements from always going to first char of line
set nostartofline

" diplay cursor position in bottom of screen
set ruler

" always display status line
set laststatus=2

" instead of failing on unsaved changes, ask pls
set confirm

" no more beeping
set visualbell
set t_vb=

" enable use of mouse for all modes
set mouse=a

" set command window height to 2 lines
set cmdheight=2

" line numbers
set number

" quickly time out on keycodes, but never time out on mappings
set notimeout ttimeout ttimeoutlen=200

" show matching braces
set showmatch

" show a visual line under the cursors current line
"set cursorline

" ---------------------------------------------------
" Indentation options

" use 4 spaces instead of tabs
set shiftwidth=4
set softtabstop=4
set expandtab


" ---------------------------------------------------
" Mappings

" Use jk instead of esc to change modes
inoremap jk <ESC>

let mapleader = "\<Space>"

" --------------------------------------------------
"  Language specific

"  enable all Python syntax highlight features
let python_highlight_all = 1
