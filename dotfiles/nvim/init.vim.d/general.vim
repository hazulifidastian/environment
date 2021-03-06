syntax on

let g:config_dir='~/.config/nvim/'
let g:pytools_venv_dir=g:config_dir.'pytools/.venv/'
let g:pytools_venv_bin_dir=g:config_dir.'bin/'

if exists("g:did_load_filetypes")
  filetype off
  filetype plugin indent off
endif
" set rtp+=g:config_dir.'godoctor.vim'
execute 'set rtp+='.g:config_dir.'godoctor.vim'
filetype on
filetype plugin indent on

" Impossible to put it in vim-delve - to debug
" let g:delve_breakpoint_sign = ""
" let g:delve_tracepoint_sign = ""

" colorscheme
let g:gruvbox_bold=1
let g:gruvbox_underline=1
let g:gruvbox_undercurl=1
let g:gruvbox_termcolors=256
let g:gruvbox_contrast_dark="medium"
let g:gruvbox_contrast_light="medium"
let g:gruvbox_sign_column = 'dark0'
let g:gruvbox_color_column="dark0"
let g:gruvbox_vert_split="dark0"
let g:gruvbox_invert_selection=0
let g:gruvbox_invert_signs=0
let g:gruvbox_invert_indent_guides=0
let g:gruvbox_invert_tabline=0
let g:gruvbox_improved_warnings=1

if has("gui_running")
    "gui themes
    set background=dark
    let g:gruvbox_italic=1
    let g:gruvbox_italicize_comments=1
    let g:gruvbox_italicize_strings=1
    colorscheme gruvbox
else
    "terminal themes
    set background=dark
    " Italic not supported by vim
    " let g:gruvbox_italic=1
    colorscheme gruvbox
endif

" True colors setting
set termguicolors
let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"

" Change cursor shape based on mode
let &t_SI = "\<Esc>[6 q"
let &t_SR = "\<Esc>[4 q"
let &t_EI = "\<Esc>[2 q"

" Neovim-qt
if exists('g:GuiLoaded')
    set guifont=mplus\ Nerd\ Font:h11
endif

" gvim config
if has("gui_running")
    
    set lines=20 columns=120

    " font
    set guifont=mplus\ Nerd\ Font:h13

    " custom border
    set go-=T
    set go-=r
    set go-=L
    set go-=l
    set go-=b
    set go-=m

    " To enable the saving and restoring of screen positions.
    " let g:screen_size_restore_pos = 1

    " " To save and restore screen for each Vim instance.
    " " This is useful if you routinely run more than one Vim instance.
    " " For all Vim to use the same settings, change this to 0.
    " let g:screen_size_by_vim_instance = 1

    if !exists('g:screen_size_restore_pos')
	let g:screen_size_restore_pos = 1
    endif
    if !exists('g:screen_size_by_vim_instance')
	let g:screen_size_by_vim_instance = 1
    endif
    autocmd VimEnter * if g:screen_size_restore_pos == 1 | call general#ScreenRestore() | endif
    autocmd VimLeavePre * if g:screen_size_restore_pos == 1 | call general#ScreenSave() | endif
endif

if !has('nvim')
    set ttymouse=xterm2
endif

if has('nvim')
    tnoremap <Esc> <C-\><C-n>
endif

" set the directory where the swap file will be saved
" set backupdir=g:config_dir.'backup//'
" set directory=g:config_dir.'swap//'
execute 'set backupdir='.g:config_dir.'backup//'
execute 'set directory='.g:config_dir.'swap//'

" save undo trees in files
set undofile
execute 'set undodir='.g:config_dir.'undo//'

" session directory
let g:sessions_dir=g:config_dir.'sessions/'

" set line number
set number

" the copy goes to the clipboard
set clipboard+=unnamedplus

" use 4 spaces instead of tab (to replace existing tab use :retab)
" copy indent from current line when starting a new line
set autoindent
set expandtab
set tabstop=4
set softtabstop=4
set shiftwidth=4

" wrapping break and indent
" set breakindent
" set breakindentopt=sbr
" set showbreak=↪

" nowrap and easy horz scrolling
set nowrap
set sidescroll=1

" when at 3 spaces, and I hit > ... go to 4, not 7
set shiftround

" number of undo saved in memory
set undolevels=1000 " How many undos
set undoreload=1000 " number of lines to save for undo

" Use case insensitive search, except when using capital letters
set ignorecase
set smartcase

" set list
set list listchars=tab:\┆\ ,trail:·,nbsp:±,extends:>,precedes:<

" doesn't prompt a warning when opening a file and the current file was written but not saved
set hidden

" doesn't display the mode status
set noshowmode

" Keep cursor more in middle when scrolling down / up
"set scrolloff=999

" no swap file! This is just annoying
"set noswapfile

" write automatically when quitting buffer
"set autowrite

" Fold related
set foldlevelstart=0 " Start with all folds closed

" Set foldtext
set foldtext=general#FoldText()

" Show the substitution LIVE
if has('nvim')
    set inccommand=nosplit
endif

" Better ex autocompletion
set wildmenu
set wildmode=list:longest,full

" relative / hybrid line number switch
set number number

" for vertical pane in git diff tool
set diffopt+=vertical

" augroup numbertoggle
"   autocmd!
  " autocmd BufEnter,FocusGained,InsertLeave * set relativenumber
  " autocmd BufLeave,FocusLost,InsertEnter   * set norelativenumber

  "set number except on nerdtree and taglist
  " let blacklist = ['nerdtree', 'tagbar']
  " autocmd BufEnter,FocusGained,InsertLeave * if index(blacklist, &ft) < 0 | set relativenumber
  " autocmd BufLeave,FocusLost,InsertEnter * if index(blacklist, &ft) < 0 | set norelativenumber
  if has("nvim")
    autocmd TermOpen * setlocal nornu nonu
  endif
" augroup END

autocmd vimrc FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o

" enable the mouse
set mouse=a

" No clue what it is :D
" autocmd VimResized * wincmd =

" hu?
inoremap <expr> <c-y> matchstr(getline(line('.')-1), '\%' . virtcol('.') . 'v\%(\k\+\\|.\)')

" path to your python
let g:python3_host_prog = '/usr/bin/python3'
let g:python_host_prog = '/usr/bin/python2'

" highlight the line which is longer than the defined margin (100 character)
" textwidth automatically break lina, so be carefull
" set textwidth=99
" set colorcolumn=+1
" highlight ColorColumn ctermbg=red

" split below and right
set splitbelow splitright

" waiting for key
set timeout timeoutlen=1000 ttimeoutlen=10

" show status on vim/gvim
set laststatus=2

" Twig
autocmd vimrc BufNewFile,BufRead *.twig set filetype=html.twig

" Yaml
autocmd vimrc BufNewFile,BufRead *.yml.dist set filetype=yaml.

" vimlocal
autocmd vimrc BufNewFile,BufRead *.vimlocal set filetype=vim

autocmd vimrc BufNewFile,BufRead *.css set filetype=css

" setup <C-n> vim-multiple-cursor to work on gvim
if ("gui_running")
    set selection=inclusive
endif

set sessionoptions-=help
set sessionoptions-=buffers
set sessionoptions-=options

if !has('nvim')
    set termguicolors
    set t_Co=256

    " gruvbox colors
    let g:terminal_ansi_colors = [
	\ '#282828',
	\ '#cc241d',
	\ '#98971a',
	\ '#d79921',
	\ '#458588',
	\ '#b16286',
	\ '#689d6a',
	\ '#a89984',
	\ '#928374',
	\ '#fb4934',
	\ '#b8bb26',
	\ '#fabd2f',
	\ '#83a598',
	\ '#d3869b',
	\ '#8ec07c',
	\ '#ebdbb2'
	\ ]

    " alternative colors
    " let g:terminal_ansi_colors = [
    " \ '#4d5057',
    " \ '#cb817c',
    " \ '#83ac75',
    " \ '#f6e5af',
    " \ '#83afe5',
    " \ '#9a93e1',
    " \ '#80c1ca',
    " \ '#c5c8c6',
    " \ '#4d5057',
    " \ '#da4e4a',
    " \ '#9dcf8d',
    " \ '#ff9a54',
    " \ '#83afe5',
    " \ '#d08ec2',
    " \ '#85def4',
    " \ '#c5c8c6'
    " \ ]
    set t_AB=^[[48;5;%dm
    set t_AF=^[[38;5;%dm
endif

" Shorten message
set shortmess+=c

" hide tabline (tabline had limited capability)
set showtabline=0

" No resizing if any window closed
set noequalalways

" Show fileinfo on terminal title
set title titlestring=

set shell=/usr/bin/fish

" Files and folders to ignore
set wildignore=*/.git/*
set wildignore+=*/.DS_Store
set wildignore+=*/vendor
set wildignore+=*/env/*
set wildignore+=*.pyc
set wildignore+=*/__pycache__/
set wildignore+=*/deps/* " Elixir deps
set wildignore+=*/_build/* " Elixir builds
set wildignore+=*/Pods/* " CocoaPods
set wildignore+=*/node_modules/*
set wildignore+=*/bower_components/*
set wildignore+=*/elm-stuff/*
set wildignore+=*/staticfiles/*
set wildignore+=*.gch
set wildignore+=*.o

let g:netrw_banner = 0
let g:netrw_liststyle = 3
let g:netrw_browse_split = 4
let g:netrw_altv = 1
let g:netrw_winsize = 25

" Search file when open with command :e file<Tab>
set path+=**

" Repeat pattern after search with /<pattern>
set incsearch

" Hide tilde on blank line
hi NonText guifg=bg

" Turn off vim, always opening scratch window
" when press tab on autocomplete
" set completeopt-=preview

" Colum coloring
set colorcolumn=88

" let g:gutentags_trace = 1

set updatetime=300

" always show signcolumns
set signcolumn=yes

" command height
" set cmdheight=2
