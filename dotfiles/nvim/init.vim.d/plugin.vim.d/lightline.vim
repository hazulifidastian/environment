if has("gui_running")
    let g:lightline = { 'colorscheme': 'gruvbox' }
else
    let g:lightline = { 'colorscheme': 'one' }
endif

let g:lightline = {
    \   'active': {
    \     'left':[ [ 'mode', 'paste' ],
    \              [ 'readonly', 'filename', 'modified', 'tagbar']
    \     ]
    \   },
    \   'component': {
    \     'tagbar': '%{tagbar#currenttag("%s", "", "f")}',
    \     'lineinfo': ' %3l:%-2v',
    \   },
    \   'component_function': {
    \     'readonly': 'LightlineReadonly',
    \     'gitbranch': 'LightlineFugitive',
    \   }
    \ }

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

let g:lightline.separator = {
    \   'left': '', 'right': ''
    \ }

let g:lightline.subseparator = {
	\   'left': '', 'right': '' 
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
