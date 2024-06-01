set nocompatible
filetype off

" Download plug-ins to the ~/.vim/plugged/ directory
call plug#begin('~/.vim/plugged')

Plug 'sheerun/vim-polyglot'   " languagepacks syntax
Plug 'morhetz/gruvbox'        " theme
Plug 'jiangmiao/auto-pairs'   " auto brackets etc
Plug 'preservim/nerdtree'     " File Explorer
Plug 'preservim/tagbar'       " lustige leiste
Plug 'derekwyatt/vim-fswitch' " header implementation switcher
Plug 'derekwyatt/vim-protodef' " prototype zu implementation
Plug 'matze/vim-move'         " besseres moven von zeilen
Plug 'itchyny/lightline.vim'  " coole bar unen
Plug 'maxboisvert/vim-simple-complete' " auto complete mit tab

call plug#end()
filetype plugin indent on

set number relativenumber " Enable line numbers
set cursorline
hi CursorLineNr term=bold ctermfg=yellow cterm=bold
syntax on	            " Enable syntax highlighting

" How many columns of whitespace a \t is worth
set tabstop=4

" How many columns of whitespace a "level of indentation" is worth
set shiftwidth=4

" Use spaces when tabbing
set expandtab

set incsearch           " Enable incremental search
set hlsearch            " Enable highlight search

set termwinsize=12x0    " Set terminal size
set splitbelow          " Always split below
set mouse=a             " Enable mouse drag on window splits

" theme
set background=dark
colorscheme gruvbox
autocmd VimEnter * hi Normal ctermbg=none

" keybind für autobrackets
let g:AutoPairsShortcutToggle = '<C-P>'

" nerdtree settings
let NERDTreeShowBookmarks = 1   " Show the bookmarks table
let NERDTreeShowHidden = 1      " Show hidden files
let NERDTreeShowLineNumbers = 0 " Hide line numbers
let NERDTreeMinimalMenu = 1     " Use the minimal menu (m)
let NERDTreeWinPos = 'left'     " Panel opens on the left side
let NERDTreeWinSize = 31        " Set panel width to 31 columns
nmap <F2> :NERDTreeToggle<CR>

" tagbar settings
" Focus the panel when opening it
let g:tagbar_autofocus = 1
" Highlight the active tag
let g:tagbar_autoshowtag = 1
" Make panel vertical and place on the right
let g:tagbar_position = 'botright vertical'
" Mapping to open and close the panel
nmap <F8> :TagbarToggle<CR>

" fswitch settings
au! BufEnter *.cpp let b:fswitchdst = 'hpp,h'
au! BufEnter *.h let b:fswitchdst = 'cpp,c'
nmap <C-Z> :vsplit <bar> :wincmd l <bar> :FSRight<CR>

" protodef settings
" Pull in prototype
nmap <buffer> <silent> <leader> ,PP
" Pull in prototypes without namespace definition"
nmap <buffer> <silent> <leader> ,PN

" Tab Mappings 
map <C-l> :tabn<CR>
map <C-h> :tabp<CR>
map <C-n> :tabnew<CR>


" bar config
set laststatus=2
let g:lightline = { 'colorscheme': 'wombat',}
