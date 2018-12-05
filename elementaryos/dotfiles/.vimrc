if !has('nvim')
    set ttymouse=xterm2
endif

if has('nvim')
    tnoremap <Esc> <C-\><C-n>
endif

" set mouse=a

set nocompatible
set autoread
syntax on
filetype off

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

Plugin 'brooth/far.vim'

" ctrl-p find anyfile
Plugin 'ctrlpvim/ctrlp.vim'

" deoplete
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
" deoplete end

" editor config
Plugin 'editorconfig/editorconfig-vim'
Plugin 'ervandew/supertab'

" go programming functionality
Plugin 'fatih/vim-go'

Bundle 'gmarik/vundle'
Plugin 'honza/vim-snippets'
Plugin 'jiangmiao/auto-pairs'
Plugin 'joshdick/onedark.vim'
Plugin 'junegunn/fzf'
Plugin 'junegunn/fzf.vim'
Plugin 'jwalton512/vim-blade'
Plugin 'ludovicchabant/vim-gutentags'
Plugin 'majutsushi/tagbar'
Plugin 'matchit.zip'
Plugin 'mileszs/ack.vim'
Plugin 'morhetz/gruvbox'
Plugin 'moll/vim-bbye'
Plugin 'mattn/emmet-vim'
Plugin 'mxw/vim-jsx'
Plugin 'othree/html5.vim'
Plugin 'pangloss/vim-javascript'

" Plugin 'ryanoasis/vim-devicons'
Plugin 'scrooloose/nerdcommenter'
Plugin 'scrooloose/nerdtree'
" Plugin 'scrooloose/syntastic'
Plugin 'Shougo/denite.nvim'
" Plugin 'svermeulen/vim-easyclip'
"Plugin 'terryma/vim-multiple-cursors'

" extend search and subtitute using Subvert
Plugin 'tpope/vim-abolish'

Plugin 'tpope/vim-fugitive'

" repeat anything supported plugin using . (dot)
Plugin 'tpope/vim-repeat'

Plugin 'tpope/vim-surround'

" move line
Plugin 'tpope/vim-unimpaired'

Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
" Plugin 'valloric/youcompleteme'
Plugin 'yggdroot/indentline'

" php
Plugin 'joonty/vdebug'
Plugin 'StanAngeloff/php.vim', {'for': 'php'}
Plugin 'stephpy/vim-php-cs-fixer', {'for': 'php'}
Plugin 'nishigori/vim-php-dictionary', {'for': 'php'}

" php refactoring options
Plugin 'adoy/vim-php-refactoring-toolbox', {'for': 'php'}
Plugin 'phpactor/phpactor', {'for': 'php', 'do': 'composer install'}
Plugin '2072/php-indenting-for-vim', {'for': 'php'}

" php doc autocompletion
Plugin 'tobyS/vmustache' | Plugin 'tobyS/pdv', {'for': 'php'}

" autocompletion
" Plugin 'ncm2/ncm2'
" Plugin 'ncm2/ncm2-ultisnips'
" Plugin 'phpactor/ncm2-phpactor'
" Plugin 'prabirshrestha/async.vim'
" Plugin 'prabirshrestha/vim-lsp'
" Plugin 'ncm2/ncm2-vim-lsp'

" general quality tools 
Plugin 'neomake/neomake'

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

"palenight themes
" set background=dark
" colorscheme palenight
" let g:palenight_terminal_italics=1

if has("gui_running")
    "gruvbox themes
    set background=dark
    let g:gruvbox_italic=1
    let g:gruvbox_contrast_dark="medium"
    colorscheme gruvbox
else
    "onedark themes
    set background=dark
    colorscheme onedark
endif


" Airline config
if has("gui_running")
    let g:airline_theme='gruvbox'
    let g:airline_powerline_fonts = 1
    
    "Arrow
    let g:airline_left_sep = "\uE0B0"
    let g:airline_right_sep = "\uE0B2"
    let g:airline_left_alt_sep = "\uE0B1"
    let g:airline_right_alt_sep = "\uE0B3"
    
    "Workspace
    let g:workspace_powerline_separators = 1
else
    let g:airline_theme='onedark'

    "enable tabline
    let g:airline#extensions#tabline#enabled = 1
    let g:ine#extensions#tabline#show_buffers = 0
    let g:airline#extensions#tabline#tab_min_count = 1
    let g:airline#extensions#tabline#show_splits = 0
endif


"Arrow
let g:airline_left_sep = "\uE0B0"
let g:airline_right_sep = "\uE0B2"
let g:airline_left_alt_sep = "\uE0B1"
let g:airline_right_alt_sep = "\uE0B3"

let g:airline#extensions#branch#enabled = 0
" let g:airline#extensions#branch#format = 1
let g:airline_section_y = ''
let g:airline_skip_empty_sections = 1
let g:airline#extensions#whitespace#enabled = 0

"Arrow
let g:airline#extensions#tabline#left_sep = "\uE0B0"
let g:airline#extensions#tabline#right_sep = "\uE0B2"
let g:airline#extensions#tabline#left_alt_sep = "\uE0B1"
let g:airline#extensions#tabline#right_alt_sep = "\uE0B3"


"Syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_mode_map = {
  \ "mode": "passive",
  \ "active_filetypes": ["php"],
  \ "passive_filetypes": [] }

let g:syntastic_php_checkers = ["php"]

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

let g:syntastic_html_tidy_ignore_errors=[" proprietary attribute " ,"trimming empty <", "unescaped &" , "lacks \"action", "is not recognized!", "discarding unexpected"]
" let g:syntastic_html_tidy_quiet_messages = { "level" : "warnings" }
" let syntastic_mode_map = { 'passive_filetypes': ['html'] }

"NerdTree
let g:netrw_liststyle=3         " thin (change to 3 for tree)
let g:netrw_banner=0            " no banner
let g:netrw_altv=1              " open files on right
let g:netrw_preview=1           " open previews vertically
let g:NERDTreeIgnore=['\~$', 'vendor', 'node_modules', '.git']
let NERDTreeHijackNetrw=1

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


"set gui
"hide toolbar, right, left, bottom scrollbar
" set go-=m
set go-=T
set go-=r
set go-=L
set go-=l
set go-=b

"let g:molokai_original = 1
"let g:rehash256 = 1
"colorscheme solarized
"let g:solarized_termcolors=256

let g:fnt_types = ['mplus\ Nerd\ Font']
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
imap hh <Esc>

" Move text shortcut
" this using tpop/unimpaired
" just move one line on normal mode
nmap <C-S-Up> [e
nmap <C-S-Down> ]e
" visual mode, when selected
vmap <C-S-Up> [egv
vmap <C-S-Down> ]egv

" Transparent background
" hi Normal guibg=NONE ctermbg=NONE
hi Normal ctermbg=NONE

if has("gui_running")
    set lines=47 columns=120
endif

"Change cursor
" set cul
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

"vim-gutentags
let g:gutentags_ctags_exclude = ['*.css', '*.html', '*.js', '*.json', '*.xml',
\ '*.phar', '*.ini', '*.rst', '*.md','*/vendor/*',
\ '*vendor/*/test*', '*vendor/*/Test*',
\ '*vendor/*/fixture*', '*vendor/*/Fixture*',
\ '*var/cache*', '*var/log*']

"confirm quit vim
function! ConfirmQuit(writeFile)
    if (a:writeFile)
        if (expand('%:t')=="")
            echo "Can't save a file with no name."
            return
        endif
        :write
    endif

    if (winnr('$')==1 && tabpagenr('$')==1)
        if (confirm("Do you really want to quit?", "&Yes\n&No", 2)==1)
            :quit
        endif
    else
        :quit
    endif
endfu

cnoremap <silent> q<CR>  :call ConfirmQuit(0)<CR>
cnoremap <silent> x<CR>  :call ConfirmQuit(1)<CR>
"end confirm quit vim

"remove version warning
let g:go_version_warning = 0
