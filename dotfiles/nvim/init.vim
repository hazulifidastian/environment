" * Skip initialization for vim-tiny or vim-small 
" * Declare the general config group for autocommand
" * Install plugins
" * Plugin config
" * General binding
" * General config


" ------------------------------------------------- "
" * Skip initialization for vim-tiny or vim-small * "
" ------------------------------------------------- "

if !1 | finish | endif

if &compatible
    set nocompatible
endif


" ---------------------------------------------------- "
" * Declare the general config group for autocommand * "
" ---------------------------------------------------- "

augroup vimrc
  autocmd!
augroup END


" ------------------- "
" * Install plugins * "
" ------------------- "

call plug#begin('~/.config/nvim/plugged')

" display the result when searching
Plug 'henrik/vim-indexed-search'

" find and replace
Plug 'brooth/far.vim'

" editor config
Plug 'editorconfig/editorconfig-vim'

" automatically add matching tag
Plug 'jiangmiao/auto-pairs'

" wrapper for git and display git diff in the left gutter
Plug 'tpope/vim-fugitive' | Plug 'mhinz/vim-signify'

" Display commits for project / file
Plug 'junegunn/gv.vim'

" surrounding with whatever you want (paranthesis, quotes...)
Plug 'tpope/vim-surround'

" easily search, substitute and abbreviate multiple version of words
Plug 'tpope/vim-abolish'

" the . command can repeat whatever you want!
" http://vimcasts.org/episodes/creating-repeatable-mappings-with-repeat-vim/
Plug 'tpope/vim-repeat'

" comment automatically
Plug 'tpope/vim-commentary'
" Add sugar on top of Vim
Plug 'tpope/vim-eunuch'

" Move line
Plug 'tpope/vim-unimpaired'

" Highlight briefly every yank text
Plug 'machakann/vim-highlightedyank'

" swap arguments in parenthesis
Plug 'machakann/vim-swap'

" add new text object (can delete between comma with di, for example)
Plug 'wellle/targets.vim'

" camel case motion
Plug 'chaoren/vim-wordmotion'

" Match more stuff with % (html tag, LaTeX...)
Plug 'andymass/vim-matchup'

" vim project for one specific vimrc / project + startify for startup cow
Plug 'amiorin/vim-project'
Plug 'mhinz/vim-startify'

" snippets
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'

" markdown - writing
Plug 'gabrielelana/vim-markdown' " markdown plugin
Plug 'SidOfc/mkdx', { 'for': 'markdown' } " lot of keystroke for markdown

Plug 'junegunn/goyo.vim', { 'for': 'markdown' } " Distraction-free
Plug 'junegunn/limelight.vim', { 'for': 'markdown' } " Hyperfocus-writing

" Plug 'rhysd/vim-grammarous', { 'for': 'markdown' } " show grammar mistakes

" Plug 'rhysd/vim-grammarous', { 'for': 'markdown' } " show grammar mistakes
" Plug 'reedes/vim-wordy', { 'for': 'markdown' } "veridy quality of writting (see :Wordy)
" Plug 'reedes/vim-lexical' " dictionnary, thesaurus...

" phython
Plug 'davidhalter/jedi-vim'

" php
Plug 'joonty/vdebug'
Plug 'StanAngeloff/php.vim', {'for': 'php'}
Plug 'stephpy/vim-php-cs-fixer', {'for': 'php'}
Plug 'nishigori/vim-php-dictionary', {'for': 'php'}

" php refactoring options
Plug 'adoy/vim-php-refactoring-toolbox', {'for': 'php'}
Plug 'phpactor/phpactor', {'do': 'composer install', 'for': 'php'}
Plug '2072/php-indenting-for-vim', {'for': 'php'}

" php doc autocompletion
Plug 'tobyS/vmustache' | Plug 'tobyS/pdv', {'for': 'php'}

" dart
Plug 'dart-lang/dart-vim-plugin'

" create tags
Plug 'ludovicchabant/vim-gutentags'
Plug 'skywind3000/gutentags_plus'

" autocompletion
if has('nvim')
	Plug 'ncm2/ncm2'
	Plug 'roxma/nvim-yarp'
	Plug 'ncm2/ncm2-bufword'
	Plug 'ncm2/ncm2-path'
    Plug 'HansPinckaers/ncm2-jedi'
	Plug 'phpactor/ncm2-phpactor'
	"Plug 'ncm2/ncm2-go'
	"Plug 'ncm2/ncm2-tern'
	"Plug 'ncm2/ncm2-cssomni'
	Plug 'fgrsnau/ncm2-otherbuf', { 'branch': 'ncm2' }
	Plug 'ncm2/ncm2-ultisnips'
else
	Plug 'Shougo/deoplete.nvim'
	Plug 'roxma/nvim-yarp'
	Plug 'roxma/vim-hug-neovim-rpc'
    Plug 'zchee/deoplete-jedi'
	Plug 'kristijanhusak/deoplete-phpactor'
endif


" twig
Plug 'lumiliet/vim-twig', {'for': 'twig'}

" javascript plugins
Plug 'pangloss/vim-javascript'
Plug 'ternjs/tern_for_vim', { 'for': ['javascript', 'javascript.jsx', 'vue'], 'do': 'npm install'}

Plug 'leafgarland/typescript-vim'
" Plug 'mhartington/nvim-typescript', {'do': './install.sh'}

" For react
Plug 'mxw/vim-jsx'

" For Vue
Plug 'posva/vim-vue'

" general quality tools 
Plug 'w0rp/ale'

" outliner
Plug 'majutsushi/tagbar'

" collections of filetypeplugins
" Plug 'sheerun/vim-polyglot'

" Nerdtree + modifications 
Plug 'scrooloose/nerdtree', { 'on': ['NERDTreeToggle', 'NERDTreeFind']}
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'

" Status bar
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" undo tree
Plug 'sjl/gundo.vim'

" registers
Plug 'bfredl/nvim-miniyank'

" close the current buffer
Plug 'moll/vim-bbye'

" systemd syntax and error
Plug 'wgwoods/vim-systemd-syntax'

" emmet for html
Plug 'mattn/emmet-vim'

" fzf - poweful fuzzy finder
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'

" allow multisearch in current directory / multi replace as well
Plug 'wincent/ferret'

" display the hexadecimal colors - useful for css and color config
Plug 'ap/vim-css-color'

" easy way to rezise and exchange windows
Plug 'simeji/winresizer'

" replace f F t T to target easily the motion
"Plug 'yangmillstheory/vim-snipe'

" Split arrays in PHP / struct in Go
Plug 'AndrewRadev/splitjoin.vim'

" CSV plugin
Plug 'chrisbra/csv.vim'

" Table plugin
" Plug 'dhruvasagar/vim-table-mode'

" Themes
Plug 'morhetz/gruvbox'
Plug 'joshdick/onedark.vim'

call plug#end()


" ----------------- "
" * Plugin config * "
" ----------------- "

" source every plugin configs
for file in split(glob("~/.config/nvim/pluggedconf/*.nvimrc"), '\n')
    exe 'source' file
endfor

" for nuuid
"let g:nuuid_no_mappings = 1

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

" Autocompletion with tab
inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"

" project config - is not on my git repository
source ~/.config/nvim/projects.nvimrc

" Twig
autocmd vimrc BufNewFile,BufRead *.twig set filetype=html.twig

" Yaml
autocmd vimrc BufNewFile,BufRead *.yml.dist set filetype=yaml.


" ------------------- "
" * General binding * "
" ------------------- "

syntax on

" ** Block Misc ** "

" Weird hack for NERDTree to work
let mapLeader = "\\"
map <SPACE> <Leader>

" Move tab
nnoremap <Tab> gt
nnoremap <S-Tab> gT

" ctrl-arrow keys move windows
nnoremap <C-Left> <C-w>h<CR>
nnoremap <C-Right> <C-w>l<CR>
nnoremap <C-Up> <C-w>k<CR>
nnoremap <C-Down> <C-w>j<CR>

" ** EndBlock Misc ** "

" ** Block SpecialCharacter

" indent without kill the selection in vmode
vmap < <gv
vmap > >gv

" Visual mode pressing * or # searches for the current selection
" Super useful! From an idea by Michael Naumann
vnoremap <silent> * :<C-u>call general#VisualSelection('', '')<CR>/<C-R>=@/<CR><CR>
vnoremap <silent> # :<C-u>call general#VisualSelection('', '')<CR>?<C-R>=@/<CR><CR>

" Execute a macro for the all selection
xnoremap @ :<C-u>call general#ExecuteMacroOverVisualRange()<CR>


" ** EndBlock SpecialCharacter ** "

" ** Block Word ** "

" Act like D and C
nnoremap Y y$

" remap the annoying u in visual mode
vmap u y

" Change in next bracket
nmap cinb cib

" Keep the cursor in place while joining lines
nnoremap J mzJ`z

" Esc shortcut
imap hh <Esc>

" Confirm quit
cnoremap <silent> q<CR>  :call general#ConfirmQuit(0)<CR>
cnoremap <silent> x<CR>  :call general#ConfirmQuit(1)<CR>

" ** EndBlock Word ** "

" ** Block Ctrl ** "
" Save file
nnoremap <C-s> :update<CR>
inoremap <C-s> <Esc>:update<CR>

" Toggle comment using Ctrl-/
nmap <C-_> gcc
vmap <C-_> gcc<Esc>
imap <C-_> <Esc>gcc i

" ctrl-arrow keys resize windows
nnoremap <M-Left> :vertical resize -5<CR>
nnoremap <M-Right> :vertical resize +5<CR>
nnoremap <M-Up> :resize -5<CR>
nnoremap <M-Down> :resize +5<CR>
imap <up> <nop>
imap <down> <nop>
imap <left> <nop>
imap <right> <nop>

" Move text shortcut
" this using tpop/unimpaired
" just move one line on normal mode
nmap <C-S-Up> [e
nmap <C-S-Down> ]e
" visual mode, when selected
vmap <C-S-Up> [egv
vmap <C-S-Down> ]egv

"Toggle between absolute -> relative line number
nnoremap <C-n> :let [&nu, &rnu] = [&nu, &nu+&rnu==1]<CR>
nnoremap <C-n>o :set nonu nornu<CR>

" delete character after cursor in insert mode
inoremap <C-d> <Del>

" ** EndBlock Ctrl ** "


" ** Block Leader ** "

" Move to windows 1-9
" Move to tab 1-9
" Move to buffer 1-9
for s:i in range(1, 9)
  " <Leader>[1-9] move to window [1-9]
  execute 'nnoremap <Leader>w' . s:i . ' :' . s:i . 'wincmd w<CR>'
  " <Leader><leader>[1-9] move to tab [1-9]
  execute 'nnoremap <Leader>t' . s:i . ' ' . s:i . 'gt'
  " <Leader>b[1-9] move to buffer [1-9]
  execute 'nnoremap <Leader>b' . s:i . ' :b' . s:i . '<CR>'
endfor
unlet s:i

" edit vimrc with cO and source it with cR
nnoremap <Leader>cO :e $MYVIMRC<CR>
nnoremap <Leader>cR :source $MYVIMRC<CR>

" location & quickfix window
nnoremap <silent> <Leader>ll :call general#ToggleList("Location List", 'l')<CR>
nnoremap <silent> <Leader>lq :call general#ToggleList("Quickfix List", 'c')<CR>

" shortcut to substitute current word under cursor
nnoremap <Leader>[ :%s/<c-r><c-w>//g<left><left>

" surround by quotes - frequently use cases of vim-surround
map <Leader>" ysiw"<cr>
map <Leader>' ysiw'<cr>

" Simple Zoom / Restore window (like Tmux)
" nnoremap <silent> <Leader>z :call general#ZoomToggle()<CR>

" move buffer
nnoremap <Leader>bb :bn<CR>
nnoremap <Leader>B :bp<CR>
nnoremap <Leader>b# :b#<CR>
nnoremap <Leader>bf :bfirst<CR>
nnoremap <Leader>bl :blast<CR>
nmap <Leader>bd :bd<cr>
nmap <Leader>bd! :bd!<cr>

" move buffer
nnoremap <Leader>tn :tabnew<CR>
nnoremap <Leader>t :tabnext<CR>
nnoremap <Leader>T :tabprevious<CR>
nnoremap <Leader>tf :tabfirst<CR>
nnoremap <Leader>tl :tablast<CR>
nnoremap <Leader>tq :tabclose<CR>
nnoremap <Leader>to :tabonly<CR>

" window
nnoremap <Leader>ws :sp<CR>
nnoremap <Leader>wv :vsp<CR>
nnoremap <Leader>wq :q<CR>
nnoremap <Leader>wqa :qa<CR>

" help
nnoremap <Leader>h :h<Space>

" quit
" nmap <Leader>qq :q<CR>

" ** EndBlock Leader ** "

" ** Block Command/Autocommand ** "

autocmd vimrc FileType php,js,vue,go call matchadd('ColorColumn', '\%120v', 100)

" open devdocs.io with googel chrome and search the word under the cursor
command! -nargs=? DevDocs :call system('type -p open >/dev/null 2>&1 && open https://devdocs.io/#q=<args> || google-chrome -url https://devdocs.io/#q=<args>')
autocmd vimrc FileType python,ruby,rspec,javascript,go,html,php,eruby,coffee,haml nmap <buffer> <Leader>D :exec "DevDocs " . fnameescape(expand('<cword>'))<CR>

" buffer cleanup - delete every buffer except the one open
command! Ball :silent call general#Bdeleteonly()

" restore the position of the last cursor when you open a file
autocmd vimrc BufReadPost * call general#RestorePosition()

" delete trailing space when saving files
autocmd vimrc BufWrite *.php,*.js,*.jsx,*.vue,*.twig,*.html,*.sh,*.yaml,*.yml :call general#DeleteTrailingWS()

" Open images with feh
autocmd vimrc BufEnter *.png,*.jpg,*gif silent! exec "! feh ".expand("%") | :bw

" ** EndBlock Command/Autocommand ** "


" ------------------ "
" * General config * "
" ------------------ "

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

" Save session
exec 'nnoremap <Leader>ss :mksession! ~/nvim/sessions/*.vim<C-D><BS><BS><BS><BS><BS>'
" Reload session
exec 'nnoremap <Leader>sl :so ~/nvim/sessions/*.vim<C-D><BS><BS><BS><BS><BS>'

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

" load aliases
let $BASH_ENV = "~/.aliases"

" path to your python 
let g:python3_host_prog = '/usr/bin/python3'
let g:python_host_prog = '/usr/bin/python2'

" highlight the line which is longer than the defined margin (120 character)
highlight ColorColumn ctermbg=red

