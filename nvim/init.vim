" Plugins will be downloaded under the specified directory.
call plug#begin('~/.vim/plugged')

" Declare the list of plugins.
Plug 'tpope/vim-sensible'
Plug 'roxma/nvim-completion-manager'
Plug 'w0rp/ale'
Plug 'vim-airline/vim-airline'
Plug 'vimwiki/vimwiki'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-vinegar' " netrw stuff
Plug 'joshdick/onedark.vim' 


" List ends here. Plugins become visible to Vim after this call.
call plug#end()

" General
" ---------------------------------------------------------------------------
colorscheme onedark
set cursorline                      " highlight current line
set number                          " Precede each line with its line number.
set relativenumber                  " All other line numbers are relative to the current.
"set showmatch                      " Show matching brackets.
set inccommand=nosplit              " Only the best feature ever.

" Make space the leader key
let mapleader = "\<space>" 
let maplocalleader = "\<space>" 

" Map <C-N> to turn off search highlighting until the next search
nnoremap <C-N> :nohl<CR>

" Exit mode with jk
inoremap jk <Esc>

" Open .vimrc anywhere using <leader>vimrc
map <leader>vimrc :tabe $MYVIMRC<cr>
autocmd BufWritePost $MYVIMRC source $MYVIMRC

set ignorecase             " Ignore case of normal letters in a pattern.
set smartcase              " Override ignorecase if pattern contains upper case.


" Indents and Tabs 
" --------------------------------------------------------------------------
set autoindent             " Copy indent from previous line.
set expandtab              " Replace tabs with spaces in Insert mode.
set shiftwidth=4           " Spaces for each (auto)indent.
set smarttab               " Insert and delete sw blanks in the front of a line.
set softtabstop=4          " Spaces for tabs when inserting <Tab> or <BS>.
set tabstop=4              " Spaces that a <Tab> in file counts for.

let g:python3_host_prog='/usr/local/bin/python3'
