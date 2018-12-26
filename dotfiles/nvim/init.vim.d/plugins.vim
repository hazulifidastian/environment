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
" Plug 'junegunn/gv.vim'

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
" Plug 'amiorin/vim-project'
" Plug 'mhinz/vim-startify'
Plug 'tpope/vim-projectionist'
Plug 'airblade/vim-rooter'

" snippets
Plug 'SirVer/ultisnips'
" Plug 'honza/vim-snippets'

" markdown - writing
" Plug 'gabrielelana/vim-markdown' " markdown plugin
" Plug 'SidOfc/mkdx', { 'for': 'markdown' } " lot of keystroke for markdown

" Plug 'junegunn/goyo.vim', { 'for': 'markdown' } " Distraction-free
" Plug 'junegunn/limelight.vim', { 'for': 'markdown' } " Hyperfocus-writing

" Plug 'rhysd/vim-grammarous', { 'for': 'markdown' } " show grammar mistakes

" Plug 'rhysd/vim-grammarous', { 'for': 'markdown' } " show grammar mistakes
" Plug 'reedes/vim-wordy', { 'for': 'markdown' } "veridy quality of writting (see :Wordy)
" Plug 'reedes/vim-lexical' " dictionnary, thesaurus...

" Debugging for multiple language
" Plug 'joonty/vdebug'

" phython
Plug 'davidhalter/jedi-vim', {'for': 'py'}

" php
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
Plug 'dart-lang/dart-vim-plugin', {'for': 'dart'}

" create tags
Plug 'ludovicchabant/vim-gutentags'
Plug 'skywind3000/gutentags_plus'

" autocompletion
if has('nvim')
	Plug 'ncm2/ncm2'
	Plug 'roxma/nvim-yarp'
	Plug 'ncm2/ncm2-bufword'
	Plug 'ncm2/ncm2-path'
    Plug 'HansPinckaers/ncm2-jedi', {'for': 'py'}
	Plug 'phpactor/ncm2-phpactor', {'for': 'php'}
	"Plug 'ncm2/ncm2-go'
	"Plug 'ncm2/ncm2-tern'
	"Plug 'ncm2/ncm2-cssomni'
	Plug 'fgrsnau/ncm2-otherbuf', { 'branch': 'ncm2' }
	Plug 'ncm2/ncm2-ultisnips'
else
	Plug 'Shougo/deoplete.nvim'
	Plug 'roxma/nvim-yarp'
	Plug 'roxma/vim-hug-neovim-rpc'
    Plug 'zchee/deoplete-jedi', {'for': 'py'}
	Plug 'kristijanhusak/deoplete-phpactor', {'for': 'php'}
endif


" twig
Plug 'lumiliet/vim-twig', {'for': 'twig'}

" javascript plugins
Plug 'pangloss/vim-javascript', { 'for': ['javascript', 'javascript.jsx']}
Plug 'ternjs/tern_for_vim', { 'for': ['javascript', 'javascript.jsx', 'vue'], 'do': 'npm install'}

Plug 'leafgarland/typescript-vim', {'for': 'ts'}
" Plug 'mhartington/nvim-typescript', {'do': './install.sh'}

" For react
Plug 'mxw/vim-jsx', { 'for': ['javascript', 'javascript.jsx']}

" For Vue
Plug 'posva/vim-vue', {'for': 'vue'}

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
" Plug 'vim-airline/vim-airline'
" Plug 'vim-airline/vim-airline-themes'
Plug 'itchyny/lightline.vim'

" undo tree
Plug 'sjl/gundo.vim'

if has('nvim')
    " registers
    Plug 'bfredl/nvim-miniyank'
endif

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
" Plug 'chrisbra/csv.vim'

" Table plugin
" Plug 'dhruvasagar/vim-table-mode'

" Themes
Plug 'morhetz/gruvbox'
Plug 'joshdick/onedark.vim'

" Indent line
Plug 'Yggdroot/indentLine'

" multiple cursor
Plug 'terryma/vim-multiple-cursors'

" dispatch
Plug 'tpope/vim-dispatch'

" tests
Plug 'janko-m/vim-test'

call plug#end()
