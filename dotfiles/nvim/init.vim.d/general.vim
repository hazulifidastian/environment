syntax on

if exists("g:did_load_filetypes")
  filetype off
  filetype plugin indent off
endif
set rtp+=~/nvim/godoctor.vim
filetype on
filetype plugin indent on

" Impossible to put it in vim-delve - to debug
let g:delve_breakpoint_sign = ""
let g:delve_tracepoint_sign = ""
" colorscheme
if has("gui_running")
    "gruvbox themes
    set background=dark
    let g:gruvbox_italic=1
    let g:gruvbox_contrast_dark="medium"
    let g:gruvbox_termcolors=256
    colorscheme gruvbox
else
    "onedark themes
    set background=dark
    colorscheme onedark
endif

" True colors setting
set termguicolors
let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"

" Change cursor shape based on mode
let &t_SI = "\<Esc>[6 q"
let &t_SR = "\<Esc>[4 q"
let &t_EI = "\<Esc>[2 q"

" gvim config
if has("gui_running")
    set lines=20 columns=120
	
	" font
	set guifont=mplus\ Nerd\ Font\ 12

	" custom border
	set go-=T
	set go-=r
	set go-=L
	set go-=l
	set go-=b

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
set backupdir=~/.config/nvim/backup//
set directory=~/.config/nvim/swap//

" save undo trees in files
set undofile
set undodir=~/nvim/undo//

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

" break and indent
set breakindent


" when at 3 spaces, and I hit > ... go to 4, not 7
set shiftround

" number of undo saved in memory
set undolevels=10000 " How many undos
set undoreload=10000 " number of lines to save for undo

" Use case insensitive search, except when using capital letters
set ignorecase
set smartcase

" set list
set list listchars=tab:\┆\ ,trail:·,nbsp:±

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
set number relativenumber

" for vertical pane in git diff tool
set diffopt+=vertical

augroup numbertoggle
  autocmd!
  " autocmd BufEnter,FocusGained,InsertLeave * set relativenumber
  " autocmd BufLeave,FocusLost,InsertEnter   * set norelativenumber
  
  "set number except on nerdtree and taglist
  let blacklist = ['nerdtree', 'tagbar']
  autocmd BufEnter,FocusGained,InsertLeave * if index(blacklist, &ft) < 0 | set relativenumber
  autocmd BufLeave,FocusLost,InsertEnter * if index(blacklist, &ft) < 0 | set norelativenumber
augroup END

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

" highlight the line which is longer than the defined margin (120 character)
highlight ColorColumn ctermbg=red

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
