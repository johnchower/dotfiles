set nocompatible              " required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.config/nvim/bundle/Vundle.vim
call vundle#begin()

" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" Add all your plugins here (note older versions of Vundle used Bundle instead of Plugin)
" Plugin 'scrooloose/nerdtree.git'
Plugin 'vim-scripts/indentpython.vim'
" Plugin 'jalvesaq/Nvim-R'
" Plugin 'jpalardy/vim-slime'
Plugin 'christoomey/vim-tmux-navigator'
Plugin 'tpope/vim-surround'
" Plugin 'scrooloose/syntastic'
Plugin 'altercation/vim-colors-solarized'
" Plugin 'Valloric/YouCompleteMe'
" Plugin 'vim-scripts/AutoComplPop'
" Plugin 'Shougo/neocomplete.vim'
Plugin 'vim-scripts/dbext.vim'
" Plugin 'vim-scripts/SQLComplete.vim'
Plugin 'ctrlpvim/ctrlp.vim'
" Plugin 'bfredl/nvim-ipy'
" Plugin 'python-mode/python-mode'
Plugin 'wesQ3/vim-windowswap'
Plugin 'vim-scripts/Tabmerge'
Plugin 'roxma/nvim-completion-manager'


" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

" Search Settings
" Highlight search results as you type
set incsearch
" Search defaults to case-insensitive
set ignorecase
" Don't leave highlights behind after you're done searching
set nohlsearch

" allows incsearch highlighting for range commands
cnoremap $t <CR>:t''<CR>
cnoremap $T <CR>:T''<CR>
cnoremap $m <CR>:m''<CR>
cnoremap $M <CR>:M''<CR>
cnoremap $d <CR>:d<CR>``

" Automatic split location
set splitbelow
set splitright

" Key binding for executing current line in shell:
nnoremap <C-M> :exec '!' .getline('.')<CR>

" Line numbers
set number

" Visual autocomplete menu
set wildmenu

" Show matching parentheses
set showmatch

" load filetype-specific indent files
filetype indent on

" syntax highlighting
syntax enable
set background=dark
colo solarized 

" Split Navigations 
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" ctrlp needs to find dotfiles
let g:ctrlp_show_hidden = 1

" Set python3 executable
let g:python3_host_prog = '/Users/jchower/miniconda3/bin/python'


" YouCompleteMe semantic triggers
"   let g:ycm_semantic_triggers =  {
"     \   'r' : ['::[^\s^(]+', '(', '<-', '%>%'],
"     \   'R' : ['::[^\s^(]+', '(', '<-', '%>%'],
"     \	'sql' : ['FROM\s']
"     \ }

" R tmux pane options
" let R_in_buffer = 0
" let R_applescript = 0
" let R_tmux_split = 1

" R indentation rules
" let r_indent_op_pattern = '%[^%]*%$'

" Disable Nvim-R's autocompletion of "_" to "<-"
" let R_assign = 2

" Show Nvim-R's omni completion as you type
" let R_show_args = 1
" Change Nvim-R sourcing behavior
" let R_source_args = "print.eval = TRUE, echo = TRUE"

" Setup vim-slime to work with tmux
" let g:slime_target = "tmux"
" let g:slime_paste_file = "$HOME/.slime_paste"
 
" TMUX window move stuff
let g:tmux_navigator_no_mappings = 1

nnoremap <silent> <c-h> :TmuxNavigateLeft<cr>
nnoremap <silent> <c-j> :TmuxNavigateDown<cr>
nnoremap <silent> <c-k> :TmuxNavigateUp<cr>
nnoremap <silent> <c-l> :TmuxNavigateRight<cr>
nnoremap <silent> <c-\\> :TmuxNavigatePrevious<cr>

" Mouse behavior
set mouse=a

" Allow tmux to access system clipboard
set clipboard=unnamed
