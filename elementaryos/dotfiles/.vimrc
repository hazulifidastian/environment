if !has('nvim')
    set ttymouse=xterm2
endif

if has('nvim')
    tnoremap <Esc> <C-\><C-n>
endif

set mouse=a

set nocompatible
set autoread
syntax on
filetype off

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

Bundle 'gmarik/vundle'
Plugin 'ctrlpvim/ctrlp.vim'
" Plugin 'kien/ctrlp.vim'
Plugin 'yggdroot/indentline'
Plugin 'majutsushi/tagbar'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-surround'
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/nerdcommenter'
Plugin 'scrooloose/syntastic'
" Plugin 'valloric/youcompleteme'
Plugin 'pangloss/vim-javascript'
"Plugin 'terryma/vim-multiple-cursors'
Plugin 'othree/html5.vim'
Plugin 'stanangeloff/php.vim'
Plugin 'matchit.zip'
Plugin 'mattn/emmet-vim'
Plugin 'mxw/vim-jsx'
Plugin 'fatih/vim-go'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'editorconfig/editorconfig-vim'
Plugin 'drewtempelmeyer/palenight.vim'
Plugin 'brooth/far.vim'
Plugin 'Shougo/denite.nvim'
Plugin 'mileszs/ack.vim'
Plugin 'jwalton512/vim-blade'
Plugin 'tpope/vim-repeat'
" Plugin 'svermeulen/vim-easyclip'
" Plugin 'bagrat/vim-workspace'
" Plugin 'ryanoasis/vim-devicons'

if has('nvim')
  Plugin 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
else
  Plugin 'Shougo/deoplete.nvim'
  Plugin 'roxma/nvim-yarp'
  Plugin 'roxma/vim-hug-neovim-rpc'
endif

Plugin 'zchee/deoplete-go', { 'do': 'make'}
Plugin 'mhartington/nvim-typescript'
Plugin 'carlitux/deoplete-ternjs', { 'do': 'npm install -g tern' }

filetype plugin indent on
set ignorecase
set smartcase
set number 
set encoding=utf-8
scriptencoding utf-8
set tabstop=4 softtabstop=0 expandtab shiftwidth=4 smarttab
set breakindent

set laststatus=2
set noshowmode

"Indent line
let g:indentLine_color_term = 239

" Airline config
let g:airline_theme='jellybeans'

if has("gui_running")
    let g:airline_theme='jellybeans'
endif

let g:airline_powerline_fonts = 1

"Backslash separator
let g:airline_left_sep = "\uE0B8"
let g:airline_right_sep = "\uE0BE"
let g:airline_left_alt_sep = "\uE0B9"
let g:airline_right_alt_sep = "\uE0BF"

"Fire separator
" let g:airline_left_sep = "\uE0C0"
" let g:airline_right_sep = "\uE0C2"
" let g:airline_left_alt_sep = "\uE0C1"
" let g:airline_right_alt_sep = "\uE0C3"

"Rounded separator
" let g:airline_left_sep = "\uE0B4"
" let g:airline_right_sep = "\uE0B6"
" let g:airline_left_alt_sep = "\uE0B5"
" let g:airline_right_alt_sep = "\uE0B7"

let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#show_buffers = 0
let g:airline#extensions#tabline#tab_min_count = 2

let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = ''
let g:airline#extensions#tabline#right_sep = ' '
let g:airline#extensions#tabline#right_alt_sep = ''

"Workspace
let g:workspace_powerline_separators = 1

"Syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_mode_map = {
  \ "mode": "passive",
  \ "active_filetypes": ["php"],
  \ "passive_filetypes": [] }

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

let g:syntastic_html_tidy_ignore_errors=[" proprietary attribute " ,"trimming empty <", "unescaped &" , "lacks \"action", "is not recognized!", "discarding unexpected"]
" let g:syntastic_html_tidy_quiet_messages = { "level" : "warnings" }
" let syntastic_mode_map = { 'passive_filetypes': ['html'] }

"NerdTree
let g:netrw_liststyle=0         " thin (change to 3 for tree)
let g:netrw_banner=0            " no banner
let g:netrw_altv=1              " open files on right
let g:netrw_preview=1           " open previews vertically
let g:NERDTreeIgnore=['\~$', 'vendor', 'node_modules', '.git']

"NerdCommenter
let g:NERDSpaceDelims = 1
let g:NERDCompactSexyComs = 1

" CTRL-P
" Excluding version control directories
set wildignore+=*/.git/*,*/.hg/*,*/.svn/*,*/vendor/*,*/node_modules/*


"Emmet
" let g:user_emmet_install_global = 0
" autocmd FileType html,css EmmetInstall
let g:user_emmet_leader_key='<C-Y>'

"Deoplet
let g:deoplete#enable_at_startup = 1

"Keymap
nmap <F8> :TagbarToggle<CR>
map <C-n> :NERDTreeToggle<CR>

"Folding
set foldmethod=indent
set foldnestmax=10
set nofoldenable        "dont fold by default
set foldlevel=1

"Vim-jsx
let g:jsx_ext_required = 0

let g:one_allow_italics = 1

"vim-go
" format with goimports instead of gofmt
let g:go_fmt_command = "goimports"

"Look&Feel
"set gfn=M+2m:h10:cANSI
set fillchars=""
if has('nvim')
  let $NVIM_TUI_ENABLE_TRUE_COLOR=1
end
set t_Co=256

"palenight themes
set background=dark
colorscheme palenight
let g:palenight_terminal_italics=1

"set gui
"hide toolbar, right, left, bottom scrollbar
set go=m
set go-=r
set go-=l
set go-=b

"let g:molokai_original = 1
"let g:rehash256 = 1
"colorscheme solarized
"let g:solarized_termcolors=256

let g:fnt_types = ['FuraCode\ Nerd\ Font\ Mono']
let g:fnt_sizes = [ 14 ]


let g:fnt_index = 0
let g:fnt_size  = g:fnt_sizes[g:fnt_index]

function! CycleFont()
  let g:fnt_index = (g:fnt_index + 1) % len(g:fnt_types)
  let g:fnt_size  = g:fnt_sizes[g:fnt_index]
  call ResetFont()
endfunction

function! ResetFont ()
  if has('gui_running')
    exe ':set guifont=' . g:fnt_types[g:fnt_index] . '\ ' . string(g:fnt_size)
  endif
endfunction

call ResetFont()

function! FontSizePlus ()
  let g:fnt_size = g:fnt_size + 0.5
  call ResetFont()
endfunction

function! FontSizeMinus ()
  let g:fnt_size = g:fnt_size - 0.5
  call ResetFont()
endfunction

nnoremap <leader>+ :call FontSizePlus()<cr>
nnoremap <leader>- :call FontSizeMinus()<cr>
nnoremap cot :call CycleFont()<cr>

" Save shortcut
nnoremap <C-s> :update<CR>
inoremap <C-s> <Esc>:update<CR>l

" Close shortcut
nnoremap <C><Esc> :q<CR>
inoremap <C><Esc> :q<CR>

" Esc shortcut
imap jj <Esc>

" Transparent background
" hi Normal guibg=NONE ctermbg=NONE
hi Normal ctermbg=NONE

if has("gui_running")
    set lines=29 columns=120
endif

"Change cursor
set cul
" autocmd InsertEnter * set cul
" autocmd InsertLeave * set nocul
"

" Clipboard
set clipboard=unnamed,unnamedplus

" Ack use ag
if executable('ag')
  let g:ackprg = 'ag --vimgrep'
endif

" Camelcase move
" Use one of the following to define the camel characters.
" Stop on capital letters.
let g:camelchar = "A-Z"
" Also stop on numbers.
let g:camelchar = "A-Z0-9"
" Include '.' for class member, ',' for separator, ';' end-statement,
" and <[< bracket starts and "'` quotes.
let g:camelchar = "A-Z0-9.,;:{([`'\""
nnoremap <silent><C-Left> :<C-u>call search('\C\<\<Bar>\%(^\<Bar>[^'.g:camelchar.']\@<=\)['.g:camelchar.']\<Bar>['.g:camelchar.']\ze\%([^'.g:camelchar.']\&\>\@!\)\<Bar>\%^','bW')<CR>
nnoremap <silent><C-Right> :<C-u>call search('\C\<\<Bar>\%(^\<Bar>[^'.g:camelchar.']\@<=\)['.g:camelchar.']\<Bar>['.g:camelchar.']\ze\%([^'.g:camelchar.']\&\>\@!\)\<Bar>\%$','W')<CR>
inoremap <silent><C-Left> <C-o>:call search('\C\<\<Bar>\%(^\<Bar>[^'.g:camelchar.']\@<=\)['.g:camelchar.']\<Bar>['.g:camelchar.']\ze\%([^'.g:camelchar.']\&\>\@!\)\<Bar>\%^','bW')<CR>
inoremap <silent><C-Right> <C-o>:call search('\C\<\<Bar>\%(^\<Bar>[^'.g:camelchar.']\@<=\)['.g:camelchar.']\<Bar>['.g:camelchar.']\ze\%([^'.g:camelchar.']\&\>\@!\)\<Bar>\%$','W')<CR>
vnoremap <silent><C-Left> :<C-U>call search('\C\<\<Bar>\%(^\<Bar>[^'.g:camelchar.']\@<=\)['.g:camelchar.']\<Bar>['.g:camelchar.']\ze\%([^'.g:camelchar.']\&\>\@!\)\<Bar>\%^','bW')<CR>v`>o
vnoremap <silent><C-Right> <Esc>`>:<C-U>call search('\C\<\<Bar>\%(^\<Bar>[^'.g:camelchar.']\@<=\)['.g:camelchar.']\<Bar>['.g:camelchar.']\ze\%([^'.g:camelchar.']\&\>\@!\)\<Bar>\%$','W')<CR>v`<o
