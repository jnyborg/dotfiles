" Vundle
" -----------------------------------------------------------------------------
set nocompatible " be iMproved, required
filetype off " required
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'tpope/vim-commentary'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-repeat'                 " allows repeat for tpopes plugins
Plugin 'ctrlpvim/ctrlp.vim'               " fuzzy finding files
Plugin 'vimwiki/vimwiki'                  " Note taking plugin
Plugin 'morhetz/gruvbox'
Plugin 'junegunn/vim-easy-align'
Plugin 'markonm/traces.vim'               " show substitution as you type


call vundle#end()
filetype plugin indent on  " Enable file type detection.

" General
" -----------------------------------------------------------------------------
syntax on                      " Enable syntax highlighting.
colorscheme gruvbox
set background=dark            " Use colours that look good on a dark background.
set number                     " Precede each line with its line number.
set showmatch                  " Show matching brackets.
set noswapfile                 " Disable swap files
set belloff=all                " Disable bell sound
set display=lastline           " Don't show '@' instead of long lines
set wildmenu                   " Enhanced command-line completion
set hlsearch                   " Highlight search pattern results.
set ignorecase                 " Ignore case of normal letters in a pattern.
set incsearch                  " Highlight search pattern as it is typed.
set smartcase                  " Override ignorecase if pattern contains upper case.
set autoindent                 " Copy indent from previous line.
set expandtab                  " Replace tabs with spaces in Insert mode.
set shiftwidth=4               " Spaces for each (auto)indent.
set smarttab                   " Insert and delete sw blanks in the front of a line.
set softtabstop=4              " Spaces for tabs when inserting <Tab> or <BS>.
set tabstop=4                  " Spaces that a <Tab> in file counts for.
set backspace=indent,eol,start " Modern backspace behaviour
set ruler                      " Display current line number in corner
set showcmd                    " Show last command in status line
set laststatus=2               " always display a status line
set encoding=utf-8             " Set default encoding
set formatoptions=tcqj         " more intuitive autoformatting
set fsync                      " call fsync() for robust file saving
set history=10000              " longest possible command history
set langnoremap                " helps avoid mappings breaking
set shortmess=F                " less verbose file info
set sidescroll=1               " smoother sideways scrolling
set autoread                   " reload from disk
set ttimeoutlen=50             " ms to wait for next key in sequence
set ttyfast                    " indicates our connection is fast
set complete-=i                " auto complete ctrl+p does not search in included files
set mouse=a                    " enable mouse use in all modes



" Mappings
" -----------------------------------------------------------------------------

" Make space the leader key
let mapleader = "\<space>" 
let maplocalleader = "\<space>" 

" Map <C-L> (redraw screen) to also turn off search highlighting until the
" next search
nnoremap <C-L> :nohl<CR><C-L>

" Exit mode with jk
inoremap jk <Esc> 

" Map Y to act like D and C, i.e. to yank until EOL
map Y y$

" Open .vimrc anywhere using <leader>vimrc, and reload on write.
map <leader>vimrc :tabe ~/.vimrc<cr> 

" Start interactive EasyAlign in visual mode (e.g. vipga)
xmap ga <Plug>(EasyAlign)

" Start interactive EasyAlign for a motion/text object (e.g. gaip)
nmap ga <Plug>(EasyAlign)
