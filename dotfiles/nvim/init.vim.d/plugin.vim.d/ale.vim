let g:ale_list_window_size = 4
let g:ale_sign_column_always = 0
let g:ale_open_list = 0
let g:ale_keep_list_window_open = '0'

let g:ale_sign_error = '‼'
let g:ale_sign_warning = '--'
let g:ale_lint_on_text_changed = 'never'
let g:ale_lint_on_enter = '0'
let g:ale_lint_on_save = '1'

let g:ale_html_htmlhint_executable = 'htmlhint'
" let g:ale_python_flake8_options = '--ignore=E129,E501,E302,E265,E241,E305,E402,W503'
let g:ale_python_flake8_options = '--ignore=E116,E501,E265 --max-line-length=100'
let g:ale_linters = {
    \ 'python': ['mypy', 'flake8', 'isort'],
    \ 'css': ['stylelint'],
    \ 'html': ['htmlhint'],
    \ 'htmldjango': ['htmlhint'],
    \ 'dart': ['language_server'],
    \ }
let g:ale_python_pylint_options = '-j 0 --max-line-length=100'
