call plug#begin('~/.config/nvim/plugged')

" display the result when searching
" Plug 'henrik/vim-indexed-search'
Plug 'google/vim-searchindex'

" find and replace
Plug 'brooth/far.vim'

" editor config
" Plug 'editorconfig/editorconfig-vim'
Plug 'sgur/vim-editorconfig'

" automatically add matching tag
Plug 'jiangmiao/auto-pairs'
" Plug 'tpope/vim-endwise'

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
" Plug 'tpope/vim-commentary'
Plug 'scrooloose/nerdcommenter'

" Add sugar on top of Vim
Plug 'tpope/vim-eunuch'

" Move line
Plug 'tpope/vim-unimpaired'

" Dispatch
Plug 'tpope/vim-dispatch'

" Highlight briefly every yank text
Plug 'machakann/vim-highlightedyank'

" swap arguments in parenthesis
Plug 'machakann/vim-swap'

" add new text object (can delete between comma with di, for example)
" Plug 'wellle/targets.vim'

" camel case motion
" Plug 'chaoren/vim-wordmotion'

" Match more stuff with % (html tag, LaTeX...)
Plug 'andymass/vim-matchup'

" vim project for one specific vimrc / project + startify for startup cow
" Plug 'amiorin/vim-project'
" Plug 'mhinz/vim-startify'
" Plug 'tpope/vim-projectionist'
Plug 'airblade/vim-rooter'

" snippets
" Plug 'SirVer/ultisnips'  " replaced by coc-snippet
Plug 'honza/vim-snippets'

" Rainbow parentheses
" Conflict with tiagofumo/dart-vim-flutter-layout plugin
" Plug 'junegunn/rainbow_parentheses.vim'

" markdown - writing
" Plug 'gabrielelana/vim-markdown' " markdown plugin
" Plug 'SidOfc/mkdx', { 'for': 'markdown' } " lot of keystroke for markdown

" Plug 'junegunn/goyo.vim', { 'for': 'markdown' } " Distraction-free
" Plug 'junegunn/limelight.vim', { 'for': 'markdown' } " Hyperfocus-writing

" Plug 'rhysd/vim-grammarous', { 'for': 'markdown' } " show grammar mistakes

" Plug 'rhysd/vim-grammarous', { 'for': 'markdown' } " show grammar mistakes
" Plug 'reedes/vim-wordy', { 'for': 'markdown' } "veridy quality of writting (see :Wordy)
" Plug 'reedes/vim-lexical' " dictionnary, thesaurus...

" Rst
Plug 'Rykka/riv.vim', {'for': 'rst'}
" Plug 'Rykka/InstantRst', {'for': 'rst'}

" Debugging for multiple language
" Plug 'joonty/vdebug'

" python
Plug 'davidhalter/jedi-vim', {'for': 'py'}
Plug 'tweekmonster/django-plus.vim'

" php
" Plug 'stephpy/vim-php-cs-fixer', {'for': 'php'}
" Plug 'nishigori/vim-php-dictionary', {'for': 'php'}
Plug 'captbaritone/better-indent-support-for-php-with-html'

" php refactoring options
Plug 'adoy/vim-php-refactoring-toolbox', {'for': 'php'}
Plug 'phpactor/phpactor', {'do': 'composer install', 'for': 'php'}
Plug '2072/php-indenting-for-vim', {'for': 'php'}

" rust
Plug 'racer-rust/vim-racer', {'for': 'rust'}

" typescript
Plug 'HerringtonDarkholme/yats.vim'


" Dart
" if has('nvim')
"     Plug 'autozimu/LanguageClient-neovim', { 'do': ':UpdateRemotePlugins' }
" endif
Plug 'tiagofumo/dart-vim-flutter-layout', {'for': 'dart'}
Plug 'natebosch/vim-lsc'

" create tags
Plug 'ludovicchabant/vim-gutentags'
Plug 'skywind3000/gutentags_plus'

" autocompletion
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" if has('nvim')
"     Plug 'ncm2/ncm2'
"     Plug 'roxma/nvim-yarp'
"     Plug 'ncm2/ncm2-bufword'
"     Plug 'ncm2/ncm2-path'
"     Plug 'HansPinckaers/ncm2-jedi', {'for': 'py'}
"     Plug 'phpactor/ncm2-phpactor', {'for': 'php'}
"     Plug 'ncm2/ncm2-racer', {'for': 'rust'}
"     "Plug 'ncm2/ncm2-go'
"     "Plug 'ncm2/ncm2-tern'
"     "Plug 'ncm2/ncm2-cssomni'
"     Plug 'mhartington/nvim-typescript', {'do': './install.sh'}
"     Plug 'fgrsnau/ncm2-otherbuf', { 'branch': 'ncm2' }
"     Plug 'ncm2/ncm2-ultisnips'
" else
"     Plug 'Valloric/YouCompleteMe'
"     " Plug 'Shougo/deoplete.nvim'
"     " Plug 'roxma/nvim-yarp'
"     " Plug 'roxma/vim-hug-neovim-rpc'
"     " Plug 'zchee/deoplete-jedi', {'for': 'py'}
"     " Plug 'kristijanhusak/deoplete-phpactor', {'for': 'php'}
"     " Plug 'sebastianmarkow/deoplete-rust', {'for': 'rust'}
" endif

" general quality tools 
Plug 'w0rp/ale'

" outliner
Plug 'majutsushi/tagbar' 

" collections of filetypeplugins
Plug 'sheerun/vim-polyglot'

" Nerdtree + modifications 
Plug 'scrooloose/nerdtree', { 'on': ['NERDTreeToggle', 'NERDTreeFind']}
augroup nerd_loader
  autocmd!
  autocmd VimEnter * silent! autocmd! FileExplorer
  autocmd BufEnter,BufNew *
        \  if isdirectory(expand('<amatch>'))
        \|   call plug#load('nerdtree')
        \|   execute 'autocmd! nerd_loader'
        \| endif
augroup END
" " Plug 'tiagofumo/vim-nerdtree-syntax-highlight'

" Plug 'tpope/vim-vinegar'

" Status bar
Plug 'itchyny/lightline.vim'
Plug 'maximbaz/lightline-ale'

" undo tree
Plug 'sjl/gundo.vim'

" registers
Plug 'bfredl/nvim-miniyank'

" close the current buffer
Plug 'moll/vim-bbye'

" emmet for html
Plug 'mattn/emmet-vim'

" fzf - poweful fuzzy finder
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'

" Plug 'bosr/fzy.vim'

" allow multisearch in current directory / multi replace as well
Plug 'wincent/ferret'

" display the hexadecimal colors - useful for css and color config
Plug 'ap/vim-css-color'

" easy way to rezise and exchange windows
Plug 'simeji/winresizer'

" Split arrays in PHP / struct in Go
Plug 'AndrewRadev/splitjoin.vim', {'for': ['php', 'go']}

" easy align
" Plug 'junegunn/vim-easy-align'

" CSV plugin
" Plug 'chrisbra/csv.vim'

" Table plugin
" Plug 'dhruvasagar/vim-table-mode'

" Themes
Plug 'morhetz/gruvbox'

" Plug 'joshdick/onedark.vim'

" Indent line
Plug 'Yggdroot/indentLine', { 'on': 'IndentLinesEnable' }
autocmd! User indentLine doautocmd indentLine Syntax

" multiple cursor
" Plug 'terryma/vim-multiple-cursors'

" tests
" Plug 'janko-m/vim-test'

" workspace (load workspace on current dir, and auto save file)
" Plug 'thaerkh/vim-workspace'

" Dealing with swap files
Plug 'gioele/vim-autoswap'

" Cheat.sh
" Plug 'dbeniamine/cheat.sh-vim'

" TabNine
Plug 'zxqfl/tabnine-vim'

call plug#end()
