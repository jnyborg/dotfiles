" Vundle
" -----------------------------------------------------------------------------
set nocompatible " be iMproved, required
filetype off " required
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'jistr/vim-nerdtree-tabs'
Plugin 'tpope/vim-commentary'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-repeat'                 " allows repeat for tpopes plugins
Plugin 'vim-airline/vim-airline'          " prettier statusline
Plugin 'vim-airline/vim-airline-themes'   " airline themes
Plugin 'ctrlpvim/ctrlp.vim'               " fuzzy finding files
Plugin 'airblade/vim-gitgutter'           " git plugin vim airline
Plugin 'Raimondi/delimitMate'             " auto match delimiters
Plugin 'junegunn/vim-easy-align'          " Alignment plugin
Plugin 'chriskempson/base16-vim'          " color themes
Plugin 'vimwiki/vimwiki'                  " Note taking plugin
Plugin 'Valloric/YouCompleteMe'           " Auto completion
Plugin 'scrooloose/syntastic'
Plugin 'tpope/vim-fugitive'

call vundle#end()
filetype plugin indent on  " Enable file type detection.

" Appearance
" -----------------------------------------------------------------------------
syntax on                           " Enable syntax highlighting.
set encoding=utf-8                  " Set the character encoding to UTF-8.
set background=dark                 " Use colours that look good on a dark background.
let base16colorspace=256            " Access colors present in 256 colorspace
colorscheme base16-monokai
set cursorline                      " highlight current line
set history=10000                   " Number of commands and search patterns to remember.
set laststatus=2                    " Always show status line.
set noshowmode                      " Do not show current mode on the last line.
set number                          " Precede each line with its line number.
set relativenumber                  " All other line numbers are relative to the current.
set showcmd                         " Show command on last line of screen.
set showmatch                       " Show matching brackets.
set title                           " Set window title to 'filename [+=-] (path) - VIM'.
set visualbell                      " Disable beeping, show visual indicators instead.
let python_highlight_all=1          


" GUI options
" -----------------------------------------------------------------------------
if has('gui_running')
    set guifont=DejaVu\ Sans\ Mono\ for\ Powerline\ 13
    colorscheme base16-monokai " Set color scheme
    set guioptions=          " Remove all GUI components and options.
endif


" Behaviour
" -----------------------------------------------------------------------------
set backspace=2            " Allow <BS> and <Del> over everything.
set hidden                 " Hide when switching buffers instead of unloading.
set mouse=a                " Enable use of the mouse in all modes.
set nowrap                 " Disable word wrap.
set textwidth=0            " Do not break lines after a maximum width.
set wildmenu               " Use enhanced command-line completion.
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

" Make Shift-Tab work in insert mode
inoremap <S-Tab> <C-d>

" Map <C-L> (redraw screen) to also turn off search highlighting until the
" next search
nnoremap <C-L> :nohl<CR><C-L>

" Exit mode with jk
inoremap jk <Esc>

" Map Y to act like D and C, i.e. to yank until EOL
map Y y$

" Quickly time out on keycodes, but never time out on mappings
set notimeout ttimeout ttimeoutlen=200

" Default jump to mark (') is jump to row and column
nnoremap ' `
nnoremap ` '

" Open .vimrc anywhere using <leader>vimrc, and reload on write.
map <leader>vimrc :tabe ~/.vimrc<cr>
autocmd bufwritepost .vimrc source $MYVIMRC

" Save the file using Ctrl-S
nnoremap <C-S> :update<cr>
inoremap <C-S> <Esc>:update<cr>gi



" Plugin Settings - airline 
" -----------------------------------------------------------------------------
let g:airline_powerline_fonts = 1               " use powerline fonts 
let g:airline#extensions#whitespace#enabled = 0 " disable whitespace check
" Remove arrow symbols
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''


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

nmap <silent> <leader>floo :FlooJoinWorkspace https://floobits.com/steffen555/lego<CR>

" Plugin Settings - VimWiki
" -----------------------------------------------------------------------------
" Change the default path to reside in Dropbox for backup
let g:vimwiki_list = [{'path': '~/Dropbox/vimwiki'}]


" Plugin Settings - YouCompleteMe
" -----------------------------------------------------------------------------
" Ensure autocomplete window goes away when you're done with it
let g:ycm_autoclose_preview_window_after_completion=1

" Go to definition binding
map <leader>g  :YcmCompleter GoToDefinitionElseDeclaration<CR>
