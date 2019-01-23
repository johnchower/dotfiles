set nocompatible              " required
filetype off                  " required

" set the runtime path to include Vundle and initialize
" set runtimepath+=~/.config/nvim/bundle/Vundle.vim
call plug#begin('~/.local/share/nvim/plugged')

" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
" Plugin 'gmarik/Vundle.vim'

" Add all your plugins here
Plug 'vim-scripts/indentpython.vim'
Plug 'jalvesaq/Nvim-R'
Plug 'jpalardy/vim-slime'
Plug 'christoomey/vim-tmux-navigator'
Plug 'tpope/vim-surround'
Plug 'JulioJu/neovim-qt-colors-solarized-truecolor-only'
Plug 'vim-scripts/dbext.vim'
Plug 'vim-scripts/SQLComplete.vim'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'wesQ3/vim-windowswap'
Plug 'vim-scripts/Tabmerge'
Plug 'ncm2/ncm2'
Plug 'roxma/nvim-yarp'
Plug 'keith/parsec.vim'
Plug 'tpope/vim-unimpaired'
Plug 'vim-pandoc/vim-rmarkdown'
Plug 'xolox/vim-misc'
Plug 'xolox/vim-session'
Plug 'junegunn/goyo.vim'
Plug 'tomtom/tcomment_vim'
Plug 'davidhalter/jedi'
Plug 'https://github.com/tpope/vim-vinegar'
Plug 'jacob-ogre/vim-syncr'
Plug 'JamshedVesuna/vim-markdown-preview'
Plug 'SirVer/UltiSnips'
Plug 'honza/vim-snippets'
Plug 'mja/vim-stan'
Plug 'chrisbra/csv.vim'
Plug 'ncm2/ncm2-bufword'
Plug 'ncm2/ncm2-tmux'
Plug 'ncm2/ncm2-path'
Plug 'ncm2/ncm2-ultisnips'
Plug 'fgrsnau/ncm2-otherbuf'
Plug 'gaalcaras/ncm-R'

Plug 'autozimu/LanguageClient-neovim', {
    \ 'branch': 'next',
    \ 'do': 'bash install.sh',
    \ }

" All of your Plugins must be added before the following line
call plug#end()            " required
filetype plugin indent on    " required

" Use deoplete.
" let g:LanguageClient_autoStart = 1
" let g:deoplete#enable_at_startup = 1

" LanguageClient settings for R
let g:LanguageClient_serverCommands = {
    \ 'rmd': ['R', '--quiet', '--slave', '-e', 'languageserver::run()'],
    \ 'r': ['R', '--quiet', '--slave', '-e', 'languageserver::run()'],
    \ 'python': ['pyls']
    \ }

" Bind escape to terminal exit
tnoremap <Esc> <C-\><C-n>
 
" Press enter key to trigger snippet expansion
" The parameters are the same as `:help feedkeys()`
inoremap <silent> <expr> <CR> ncm2_ultisnips#expand_or("\<CR>", 'n')
" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"

" UltiSnips Trigger configuration. 
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"

" UltiSnips directories
let g:UltiSnipsSnippetsDir="~/.local/share/nvim/plugged/UltiSnips"
let g:UltiSnipsSnippetDirectories=["UltiSnips", "~/.local/share/nvim/plugged/UltiSnips"]

" Markdown preview using Github style

let vim_markdown_preview_github=1
let vim_markdown_preview_hotkey='<C-m>'

" Automatically save session periodically when editing
 
let g:session_autosave_periodic=1 
let g:session_autoload='yes'
let g:session_autosave='yes'

" Mark the 79-character column
set colorcolumn=79

" Always have the ALE sign gutter open
" let g:ale_sign_column_always=1

" Colors
set t_Co=256
set termguicolors
colorscheme solarized_nvimqt

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
set background=light

" Split Navigations 
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" ctrlp needs to find dotfiles
let g:ctrlp_show_hidden = 1

" custom ignore paths for ctrlp
let g:ctrlp_custom_ignore = '\.remake\|\.git\/'

" ctrlp use the current working directory
let g:ctrlp_working_path_mode = 'w'

" Set python3 executable
let g:python3_host_prog = '/Users/jchower/miniconda3/envs/nvim3/bin/python'

" R indentation rules
" let r_indent_op_pattern = '%[^%]*%$'
let r_indent_align_args = 0
let r_indent_ess_comments = 0
let r_indent_ess_compatible = 0



" Path to R executable
" let R_path = "~/miniconda3/bin/envs/nvim3/bin/R"

" Disable Nvim-R's autocompletion of "_" to "<-"
let R_assign = 2

" Show Nvim-R's omni completion as you type
" let R_show_args = 1
" Change Nvim-R sourcing behavior
let R_source_args = 'print.eval = TRUE, echo = TRUE'

" Set width of object browser in Nvim-R
let R_objbr_w = 36

" Don't automatically open html when knitting document
let R_openhtml = 0

" View data frames in excel
let R_csv_app = 'open'

" R console dimensions. 
let R_rconsole_width = 0 " Always split horizontal
let R_rconsole_height = 10 " Only have 10 rows

" Rmd indentation rules
autocmd FileType Rmd setlocal ts=2 sts=2 sw=2 expandtab
autocmd FileType rmd setlocal ts=2 sts=2 sw=2 expandtab

" YAML indentation rules
autocmd FileType yml setlocal ts=2 sts=2 sw=2 expandtab
autocmd FileType yaml setlocal ts=2 sts=2 sw=2 expandtab
autocmd BufRead,BufNewFile *.yml setfiletype yaml

" Setup vim-slime to work with tmux
let g:slime_target = 'tmux'
let g:slime_paste_file = '$HOME/.slime_paste'

" Don't move the cursor back to original position after sending code
let g:slime_preserve_curpos = 0
 
" TMUX window move stuff
let g:tmux_navigator_no_mappings = 1

nnoremap <silent> <c-h> :TmuxNavigateLeft<cr>
nnoremap <silent> <c-j> :TmuxNavigateDown<cr>
nnoremap <silent> <c-k> :TmuxNavigateUp<cr>
nnoremap <silent> <c-l> :TmuxNavigateRight<cr>
nnoremap <silent> <c-\\> :TmuxNavigatePrevious<cr>

" Tab switch
nnoremap H gT
nnoremap L gt

" Mouse behavior
set mouse=a

" Allow tmux to access system clipboard
set clipboard=unnamed

" NCM2 settings
let g:ncm2#matcher = 'abbrfuzzy' " {'module': 'cm_matchers.fuzzy_matcher', 'case': 'smartcase'}
let g:ncm2#sorter = 'abbrfuzzy' " {'module': 'cm_matchers.fuzzy_matcher', 'case': 'smartcase'}
let g:ncm2#auto_popup=1

" enable NCM2 or all buffors
autocmd BufEnter * call ncm2#enable_for_buffer()

set completeopt=noinsert,menuone,noselect

" dbext options
" Open database window to the right of the code
let g:dbext_default_window_use_horiz = 1
let g:dbext_default_buffer_lines = 25
