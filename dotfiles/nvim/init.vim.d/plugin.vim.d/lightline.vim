let g:lightline = {
    \   'active': {
    \     'left':[ [ 'mode', 'paste' ],
    \              [ 'readonly', 'relativepath', 'modified', 'tagbar']
    \     ],
    \     'right':[ ['lineinfo', 'populatetab'],
    \               []
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
    \     'populatetab': 'PopulateTab'
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
