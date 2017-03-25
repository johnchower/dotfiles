set nocompatible              " required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" Add all your plugins here (note older versions of Vundle used Bundle instead of Plugin)
Plugin 'scrooloose/nerdtree.git'
Plugin 'vim-scripts/indentpython.vim'
Plugin 'jalvesaq/Nvim-R'
Plugin 'jpalardy/vim-slime'
Plugin 'christoomey/vim-tmux-navigator'
Plugin 'tpope/vim-surround'
Plugin 'scrooloose/syntastic'
Plugin 'altercation/vim-colors-solarized'
Plugin 'Valloric/YouCompleteMe'
" Plugin 'vim-scripts/AutoComplPop'
" Plugin 'Shougo/neocomplete.vim'
Plugin 'vim-scripts/dbext.vim'
Plugin 'vim-scripts/SQLComplete.vim'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'ivanov/vim-ipython'
Plugin 'JamshedVesuna/vim-markdown-preview'
Plugin 'tpope/vim-unimpaired'
Plugin 'junegunn/goyo.vim'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

" Search Settings
" Highlight search results as you type
set incsearch
" Search defaults to case-insensitive
set ignorecase

" allows incsearch highlighting for range commands
cnoremap $t <CR>:t''<CR>
cnoremap $T <CR>:T''<CR>
cnoremap $m <CR>:m''<CR>
cnoremap $M <CR>:M''<CR>
cnoremap $d <CR>:d<CR>``

" Open NERDTree with Ctrl-n
map <C-n> :NERDTreeToggle<CR>

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

" YouCompleteMe semantic triggers
"   \   'r' : ['::[^\s^(]+', '(', '<-', '%>%'],
"   \   'R' : ['::[^\s^(]+', '(', '<-', '%>%'],
  let g:ycm_semantic_triggers =  {
    \	'sql' : ['FROM\s']
    \ }
" R tmux pane options
let R_in_buffer = 0
let R_applescript = 0
let R_tmux_split = 1

" R indentation rules
let r_indent_op_pattern = '%[^%]*%$'

" Disable Nvim-R's autocompletion of "_" to "<-"
let R_assign = 2

" Show Nvim-R's omni completion as you type
let R_show_args = 1
" Change Nvim-R sourcing behavior
let R_source_args = "print.eval = TRUE, echo = TRUE"

" Automatically open html document after knitting
let R_openhtml = 1

" Setup vim-slime to work with tmux
let g:slime_target = "tmux"
let g:slime_paste_file = "$HOME/.slime_paste"

" Split Navigations 
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
 
" TMUX window move stuff
" let g:tmux_navigator_no_mappings = 1
 
nnoremap <silent> <c-h> :TmuxNavigateLeft<cr>
nnoremap <silent> <c-j> :TmuxNavigateDown<cr>
nnoremap <silent> <c-k> :TmuxNavigateUp<cr>
nnoremap <silent> <c-l> :TmuxNavigateRight<cr>
nnoremap <silent> <c-\\> :TmuxNavigatePrevious<cr>

" Syntastic recommended beginner settings
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_enable_r_lintr_checker = 1
let g:syntastic_r_checkers = ['lintr']
let g:syntastic_r_lintr_linters = "with_defaults(camel_case_linter = NULL, object_length_linter = NULL)"

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 0
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0


" Vim Markdown Preview options
let vim_markdown_preview_hotkey='<C-m>'
let vim_markdown_preview_temp_file=1
