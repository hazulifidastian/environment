let g:lightline = {
    \   'active': {
    \     'left':[ [ 'mode', 'paste' ],
    \              [ 'readonly', 'relativepath', 'modified', 'tagbar']
    \     ],
    \     'right':[ ['lineinfo', 'percent', 'populatetab'],
    \               ['linter_errors', 'linter_warnings' ]
    \     ],
    \   },
    \   'component': {
    \     'tagbar': '%{tagbar#currenttag("%s", "", "f")}',
    \     'lineinfo': ' %2l:%-1v',
    \     'relativepath': '%<%f',
    \   },
    \   'component_function': {
    \     'readonly': 'LightlineReadonly',
    \     'gitbranch': 'LightlineFugitive',
    \     'populatetab': 'PopulateTab',
    \   }
    \ }

if has("gui_running")
    let g:lightline.colorscheme = 'gruvbox'
else
    let g:lightline.colorscheme = 'gruvbox'
endif

function! PopulateTab()
    return '⇄ '.tabpagenr().':'.tabpagenr('$')
endfunction

function! LightlineReadonly()
    return &readonly ? '' : ''
endfunction

function! LightlineFugitive()
    if exists('*fugitive#head')
        let branch = fugitive#head()
        return branch !=# '' ? ''.branch : ''
    endif
    return ''
endfunction

function! LinterStatus() abort
    let l:counts = ale#statusline#Count(bufnr(''))

    let l:all_errors = l:counts.error + l:counts.style_error
    let l:all_non_errors = l:counts.total - l:all_errors

    return l:counts.total == 0 ? 'OK' : printf(
    \   '%dW %dE',
    \   all_non_errors,
    \   all_errors
    \)
endfunction

let g:lightline.component_expand = {
      \  'linter_checking': 'lightline#ale#checking',
      \  'linter_warnings': 'lightline#ale#warnings',
      \  'linter_errors': 'lightline#ale#errors',
      \  'linter_ok': 'lightline#ale#ok',
      \ }

let g:lightline.component_type = {
      \     'linter_checking': 'left',
      \     'linter_warnings': 'warning',
      \     'linter_errors': 'error',
      \     'linter_ok': 'left',
      \ }

" let g:lightline.separator = {
"     \   'left': '', 'right': ''
"     \ }
"
" let g:lightline.subseparator = {
"     \   'left': '', 'right': ''
"     \ }

let g:lightline.separator = {
    \   'left': '', 'right': ''
    \ }

let g:lightline.subseparator = {
    \   'left': '', 'right': ''
    \ }

if !has("gui_running")
    let g:lightline.tabline = {
        \ 'left': [ [ 'tabs' ] ],
        \ 'right': [ [ 'close' ] ] }
endif

let g:lightline.mode_map = {
    \ 'n' : 'N',
    \ 'i' : 'I',
    \ 'R' : 'R',
    \ 'v' : 'V',
    \ 'V' : 'VL',
    \ "\<C-v>": 'VB',
    \ 'c' : 'C',
    \ 's' : 'S',
    \ 'S' : 'SL',
    \ "\<C-s>": 'SB',
    \ 't': 'T',
    \ }
