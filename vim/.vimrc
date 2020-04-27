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
Plugin 'dracula/vim', { 'name': 'dracula' }


call vundle#end()

" --- Minimal vimrc  -------------------------------------------------------------------
filetype plugin indent on      " Load plugins according to detected filetype.
syntax on                      " Enable syntax highlighting.

set autoindent                 " Indent according to previous line.
set expandtab                  " Use spaces instead of tabs.
set softtabstop=4              " Tab key indents by 4 spaces.
set shiftwidth=4               " >> indents by 4 spaces.
set shiftround                 " >> indents to next multiple of 'shiftwidth'.

set backspace=indent,eol,start " Make backspace work as you would expect.
set hidden                     " Switch between buffers without having to save first.
set laststatus=2               " Always show statusline.
set display=lastline           " Show as much as possible of the last line.

set showmode                   " Show current mode in command-line.
set showcmd                    " Show already typed keys when more are expected.

set incsearch                  " Highlight while searching with / or ?.
set hlsearch                   " Keep matches highlighted.

set ttyfast                    " Faster redrawing.
set lazyredraw                 " Only redraw when necessary.

set splitbelow                 " Open new windows below the current window.
set splitright                 " Open new windows right of the current window.

set cursorline                 " Find the current line quickly.
set wrapscan                   " Searches wrap around end-of-file.
set report=0                   " Always report changed lines.
set synmaxcol=200              " Only highlight the first 200 columns.

set list                       " Show non-printable characters.
if has('multi_byte') && &encoding ==# 'utf-8'
  let &listchars = 'tab:▸ ,extends:❯,precedes:❮,nbsp:±'
else
  let &listchars = 'tab:> ,extends:>,precedes:<,nbsp:.'
endif


" Put all temporary files under the same directory.
 " create directory if needed
 if !isdirectory($HOME.'/.vim/files') && exists('*mkdir')
     call mkdir($HOME.'/.vim/files')
     call mkdir($HOME.'/.vim/files/backup')
     call mkdir($HOME.'/.vim/files/swap')
     call mkdir($HOME.'/.vim/files/undo')
 endif

 " backup files
 set backup
 set backupdir   =$HOME/.vim/files/backup/
 set backupext   =-vimbackup
 set backupskip  =
 " swap files
 set directory   =$HOME/.vim/files/swap/
 set updatecount =100
 " undo files
 set undofile
 set undodir     =$HOME/.vim/files/undo/
 " viminfo files
 set viminfo     ='100,n$HOME/.vim/files/info/viminfo


" --- My Settings ----------------------------------------------------------------------------- " 
set relativenumber



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

map <leader>w :update<cr> 

" Map Ctrl+Space to trigger auto complete
inoremap <Nul> <C-n>
