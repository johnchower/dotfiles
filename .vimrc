set nocompatible              " required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" Add all your plugins here (note older versions of Vundle used Bundle instead of Plugin)
Plugin 'scrooloose/nerdtree.git'
Plugin 'vim-scripts/indentpython.vim'
Plugin 'Valloric/YouCompleteMe'
Plugin 'jalvesaq/Nvim-R'
Plugin 'jpalardy/vim-slime'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

" Key mappings

" Open NERDTree with Ctrl-n
map <C-n> :NERDTreeToggle<CR>

" Split Navigations 
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

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
syntax on

" R tmux pane options
let R_in_buffer = 0
let R_applescript = 0
let R_tmux_split = 1

" R indentation rules
let r_indent_op_pattern = '%[^%]*%$'

" Disable Nvim-R's autocompletion of "_" to "<-"
let vimrplugin_assign = 1

" Setup vim-slime to work with tmux
let g:slime_target = "tmux"
let g:slime_paste_file = "$HOME/.slime_paste"
