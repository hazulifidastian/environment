if !has('nvim')
    let test#strategy = "vimterminal"
else
    let test#strategy = "neovim"
endif

" function! DockerTransform(cmd) abort
"     return 'docker-compose exec web ' . a:cmd
" endfunction

" let g:test#custom_transformations = {'docker': function('DockerTransform')}
" let g:test#transformation = 'docker'
