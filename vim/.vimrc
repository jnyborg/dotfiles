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
Plugin 'w0ng/vim-hybrid'                  " color theme
Plugin 'chriskempson/base16-vim'          " color themes
Plugin 'altercation/vim-colors-solarized' " color theme
Plugin 'morhetz/gruvbox'                  " color theme
Plugin 'LaTeX-Box-Team/LaTeX-Box'         " Set of LaTeX editing tools.
Plugin 'Shougo/deoplete.nvim'             " Async auto completion
Plugin 'jez/vim-better-sml'               " SML plugin
Plugin 'neomake/neomake'
Plugin 'vimwiki/vimwiki'                  " Note taking plugin


call vundle#end()
filetype plugin indent on  " Enable file type detection.

" Appearance
" -----------------------------------------------------------------------------
syntax on                           " Enable syntax highlighting.
set encoding=utf-8                  " Set the character encoding to UTF-8.
set background=dark                 " Use colours that look good on a dark background.
colorscheme gruvbox
set termguicolors
set cursorline                      " highlight current line
set history=10000                   " Number of commands and search patterns to remember.
set laststatus=2                    " Always show status line.
set noshowmode                      " Do not show current mode on the last line.
set number                          " Precede each line with its line number.
set relativenumber                  " All other line numbers are relative to the current.
set showcmd                         " Show command on last line of screen.
set showmatch                       " Show matching brackets.
set t_Co=256                        " Set the number of supported colours.
set title                           " Set window title to 'filename [+=-] (path) - VIM'.
set ttyfast                         " Indicate fast terminal more smoother redrawing "
set visualbell                      " Disable beeping, show visual indicators instead.
let $NVIM_TUI_ENABLE_CURSOR_SHAPE=1 " Change cursor shape to pipe when in insert mode.

autocmd BufNewFile,BufRead *.grm   set syntax=sml

" GUI options
" -----------------------------------------------------------------------------
if has('gui_running')
    set guifont=DejaVu\ Sans\ Mono\ for\ Powerline\ 11
    colorscheme base16-chalk   " Set color scheme
    set guioptions=                 " Remove all GUI components and options.
    set linespace=6            " Increase line height spacing by pixels.
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
set wildmenu               " Use enhanced command-line completion.
set noswapfile             " Disable swap files 


" Search
" -----------------------------------------------------------------------------
set hlsearch               " Highlight search pattern results.
set ignorecase             " Ignore case of normal letters in a pattern.
set incsearch              " Highlight search pattern as it is typed.
set smartcase              " Override ignorecase if pattern contains upper case.
set inccommand=nosplit     " Show substitution as you write


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


" Terminal settings
" -----------------------------------------------------------------------------
tnoremap <Esc> <C-\><C-n> " Bind <Esc> to exit terminal mode
let g:gruvbox_termcolors=16

" Move between windows
tnoremap <A-h> <C-\><C-n><C-w>h
tnoremap <A-j> <C-\><C-n><C-w>j
tnoremap <A-k> <C-\><C-n><C-w>k
tnoremap <A-l> <C-\><C-n><C-w>l
nnoremap <A-h> <C-w>h
nnoremap <A-j> <C-w>j
nnoremap <A-k> <C-w>k
nnoremap <A-l> <C-w>l

" Enter insert mode when terminal is active
autocmd BufWinEnter,WinEnter term://* startinsert


" Plugin Settings - airline 
" -----------------------------------------------------------------------------

let g:airline_powerline_fonts = 1               " use powerline fonts 
let g:airline#extensions#whitespace#enabled = 0 " disable whitespace check
" Fix for slow escape
if ! has('gui_running')
    set ttimeoutlen=10
    augroup FastEscape
        autocmd!
        au InsertEnter * set timeoutlen=0
        au InsertLeave * set timeoutlen=1000
    augroup END
endif


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


" Plugin Settings - VimWiki
" -----------------------------------------------------------------------------
" Change the default path to reside in Dropbox for backup
let g:vimwiki_list = [{'path': '~/Dropbox/vimwiki'}]

" Plugin Settings - Neomake
" -----------------------------------------------------------------------------
" Run neomake on every write
autocmd! BufWritePost * Neomake

" Plugin Settings - Deoplete
" -----------------------------------------------------------------------------
" Use deoplete
let g:deoplete#enable_at_startup = 1
" use tab to forward cycle
inoremap <silent><expr><tab> pumvisible() ? "\<c-n>" : "\<tab>"
" use shift-tab to backward cycle
inoremap <silent><expr><s-tab> pumvisible() ? "\<c-p>" : "\<s-tab>"
