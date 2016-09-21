set nocompatible " be iMproved, required
filetype off " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" My plugins here
Plugin 'VundleVim/Vundle.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'tpope/vim-commentary'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-repeat'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'jistr/vim-nerdtree-tabs'
Plugin 'scrooloose/syntastic'
Plugin 'jez/vim-better-sml'
Plugin 'ctrlpvim/ctrlp.vim' " fuzzy finding files
Plugin 'airblade/vim-gitgutter' " git plugin vim airline
Plugin 'Raimondi/delimitMate' " auto match delimiters
Plugin 'altercation/vim-colors-solarized'
Plugin 'tomasr/molokai'
Plugin 'chriskempson/base16-vim'
Plugin 'joshdick/onedark.vim'
Plugin 'junegunn/vim-easy-align'
Bundle 'justinmk/vim-syntax-extra'
Bundle 'cypok/vim-sml'


call vundle#end()
filetype plugin indent on

"""" end Vundle plugin stuff """""

syntax on
set wildmenu " auto completion
set showcmd " show hints for your current command
set hidden " allows hiding current buffer, makes it easier to switch between files
" stop wrapping line when editing sml files
setlocal textwidth=0

"""""""""""""""""""""""""""""""
" bling / vim airline settings
"""""""""""""""""""""""""""""""
set background=dark

" Set the colorscheme
" colorscheme solarized
let base16colorspace=256
" colorscheme base16-solarized-dark
" colorscheme base16-tomorrow-night
colorscheme onedark

" remove window split chars
set fillchars=""

" Always show statusbar
set laststatus=2

" Fancy arrow symbols, requires a patched font
" To install a patched font, run over to
"     https://github.com/abertsch/Menlo-for-Powerline
" download all the .ttf files, double-click on them and click "Install"
" Finally, uncomment the next line
let g:airline_powerline_fonts = 1

" Show PASTE if in paste mode
let g:airline_detect_paste=1

" Show airline for tabs too
let g:airline#extensions#tabline#enabled = 1

" In vim-airline, only display "hunks" if the diff is non-zero
let g:airline#extensions#hunks#non_zero_only = 1

let NERDTreeMinimalUI = 1
let NERDTreeDirArrows = 1

"""""""""""""""""""""""""""""
" NeoVim
"""""""""""""""""""""""""""""
if has('nvim')
    tnoremap <Esc> <C-\><C-n> " make esc work in terminal mode
endif

"""""""""""""""""""""""""""""
" gVim Options
"""""""""""""""""""""""""""""
if has('gui_running')
    set guioptions-=T " remove toolbar
    set guioptions-=r " remove scroll bar
    set guioptions-=L " remove scroll bar
    set guioptions-=m " remove menu bar
    set guifont=Menlo\ for\ Powerline:h14
    set linespace=5
endif

"""""""""""""""""""""""""""""
" Search options
"""""""""""""""""""""""""""""

" Use case insensitive search, except when using capital letters
set ignorecase
set smartcase

" Highlight searches (use <C-L> to temporarily turn off highlighting; see the
" mapping of <C-L> below)
set hlsearch

" Show where search pattern matches while typing
set incsearch


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
set number
set relativenumber
set cursorline


"""""""""""""""""""""""""""""
" Indentation settings
"""""""""""""""""""""""""""""

" Use spaces instead of tabs
set expandtab

" Smart tabs
set smarttab

" 1 tab = 4 spaces
set shiftwidth=4
set tabstop=4

" Spaces in tab when editing
set softtabstop=4

" Auto indent
set ai

" Smart indent
set si

" Wrap lines
set wrap

" Auto indenting also on copy
set autoindent

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

" Start interactive EasyAlign in visual mode (e.g. vipga)
xmap ga <Plug>(EasyAlign)
"
" " Start interactive EasyAlign for a motion/text object (e.g. gaip)
nmap ga <Plug>(EasyAlign)

"""""""""""""""""""""""""""""
" NERDTree
"""""""""""""""""""""""""""""

" NERDTree toggle on <leader>.
nmap <silent> <leader>. :NERDTreeTabsToggle<CR>

" To have NERDTree always open on startup
let g:nerdtree_tabs_open_on_console_startup = 1


"""""""""""""""""""""""""""""""
" scrooloose/syntastic settings
"""""""""""""""""""""""""""""""
let g:syntastic_error_symbol = '✘'
let g:syntastic_warning_symbol = "▲"
augroup mySyntastic
  au!
  au FileType tex let b:syntastic_mode = "passive"
  au FileType lex let b:syntastic_mode = "passive"
augroup END

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
