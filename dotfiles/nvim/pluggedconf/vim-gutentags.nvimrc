"vim-gutentags

" update tags in background whenever you write a php file
"au BufWritePost *.php silent! !eval '[ -f ".git/hooks/ctags" ] && .git/hooks/ctags' &

let g:gutentags_ctags_exclude = ['*.css', '*.html', '*.js', '*.json', '*.xml',
\ '*.phar', '*.ini', '*.rst', '*.md','*/vendor/*',
\ '*vendor/*/test*', '*vendor/*/Test*',
\ '*vendor/*/fixture*', '*vendor/*/Fixture*',
\ '*var/cache*', '*var/log*']

" enable gtags module
"let g:gutentags_modules = ['ctags', 'gtags_cscope']

" config project root markers.
"let g:gutentags_project_root = ['.root']

" generate datebases in my cache directory, prevent gtags files polluting my project
"let g:gutentags_cache_dir = expand('~/.cache/tags')

" change focus to quickfix window after search (optional).
let g:gutentags_plus_switch = 1