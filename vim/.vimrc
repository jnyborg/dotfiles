" Vundle
" -----------------------------------------------------------------------------
set nocompatible " be iMproved, required
filetype off " required
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'      " Plugin manager
Plugin 'tpope/vim-sensible'        " Sensible default settings
Plugin 'tpope/vim-commentary'      " Comment out lines with gcc
Plugin 'tpope/vim-surround'        " Work with pairs of anything
Plugin 'tpope/vim-repeat'          " Allows repeat for tpopes plugins
Plugin 'ctrlpvim/ctrlp.vim'        " Hit <C>p for a list of files/buffers
Plugin 'vimwiki/vimwiki'           " Note taking plugin
Plugin 'junegunn/vim-easy-align'   " Align with ga<symbol>
Plugin 'markonm/traces.vim'        " Show substitution as you type
Plugin 'ervandew/supertab'         " Use <Tab> for insert auto completion
Plugin 'easymotion/vim-easymotion' " Easy navigation with <Leader><Leader>w

" Color schemes
Plugin 'morhetz/gruvbox'

call vundle#end()
filetype plugin indent on  " Enable file type detection.

" --- General -------------------------------------------------------------------

" Looks
syntax on                 " Enable syntax highlighting.
colorscheme gruvbox
set background=dark       " Use colours that look good on a dark background.
set number                " Precede each line with its line number.
set cursorline            " highlight cursor line
set ruler                 " Display current line number in corner
set laststatus=2          " always display a status line
set showcmd               " Show last command in status line
set showmatch             " Show matching brackets.
set shortmess=atI         " Shorten press ENTER to continue messages


" Indentation settings
set autoindent            " Copy indent from previous line
set expandtab             " Replace tabs with spaces in Insert mode.
set shiftwidth=4          " Spaces for each (auto)indent.
set softtabstop=4         " Spaces for tabs when inserting <Tab> or <BS>.
set tabstop=4             " Spaces that a <Tab> in file counts for.

" Disable backups and .swp files
set noswapfile                 
set nobackup
set nowritebackup

" Search
set hlsearch              " Highlight search pattern results.
set ignorecase            " Ignore case of normal letters in a pattern.
set smartcase             " Override ignorecase if pattern contains upper case.
set incsearch             " Highlight search pattern as it is typed.

" Misc
set belloff=all           " Disable bell sound
set ttyfast               " indicates our connection is fast
set mouse=a               " enable mouse use in all modes
set clipboard=unnamedplus " use system clipboard
set formatoptions+=j      " Delete comment character when joining commented lines
set hidden                " Don't complain about unsaved files when switching buffers


" --- Mappings ----------------------------------------------------------------------------- " 
" Make space the leader key
let mapleader = "\<space>" 
let maplocalleader = "\<space>" 


" Map Y to act like D and C, i.e. to yank until EOL
map Y y$

" Open .vimrc anywhere using <leader>vimrc, and reload on write.
map <leader>vimrc :tabe ~/.vimrc<cr> 

" Start interactive EasyAlign in visual mode (e.g. vipga)
xmap ga <Plug>(EasyAlign)

" Start interactive EasyAlign for a motion/text object (e.g. gaip)
nmap ga <Plug>(EasyAlign)

" Absolute movement for word-wrapped lines
nnoremap j gj
nnoremap k gk

" Exit mode with jk
inoremap jk <Esc> 

" Fast split navigation.
nnoremap <C-j> <C-W><C-J>
nnoremap <C-k> <C-W><C-K>
nnoremap <C-l> <C-W><C-L>
nnoremap <C-h> <C-W><C-H>






