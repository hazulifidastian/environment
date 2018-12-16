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

source ~/.config/nvim/init.vim.d/plugins.vim

" ------------ "
" * Mapping * "
" ------------ "

source ~/.config/nvim/init.vim.d/mapping.vim

" ----------------- "
" * Plugin config * "
" ----------------- "

source ~/.config/nvim/init.vim.d/plugin.vim

" ------------------ "
" * General config * "
" ------------------ "

source ~/.config/nvim/init.vim.d/general.vim
source ~/.config/nvim/init.vim.d/autocommand.vim

