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

" Shortform text mode
let g:airline_mode_map = {
    \ '__' : '-',
    \ 'c'  : 'C',
    \ 'i'  : 'I',
    \ 'ic' : 'I',
    \ 'ix' : 'I',
    \ 'n'  : 'N',
    \ 'ni' : 'N',
    \ 'no' : 'N',
    \ 'R'  : 'R',
    \ 'Rv' : 'R',
    \ 's'  : 'S',
    \ 'S'  : 'S',
    \ '' : 'S',
    \ 't'  : 'T',
    \ 'v'  : 'V',
    \ 'V'  : 'V',
    \ '' : 'V',
    \ }

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
