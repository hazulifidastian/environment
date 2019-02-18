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

" Auto wrap on quickfix
" augroup quickfix
    " autocmd!
    " autocmd FileType qf setlocal wrap
" augroup END

" if has('gui_running')
"     autocmd vimrc buftype terminal nmap <Esc> <C-w>N
" endif

autocmd FileType netrw setl bufhidden=wipe

" ** EndBlock Command/Autocommand ** "
