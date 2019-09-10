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


call vundle#end()
filetype plugin indent on  " Enable file type detection.

" General
" -----------------------------------------------------------------------------
syntax on                           " Enable syntax highlighting.
set background=dark                 " Use colours that look good on a dark background.
set number                          " Precede each line with its line number.
set showmatch                       " Show matching brackets.
set noswapfile             " Disable swap files 


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









