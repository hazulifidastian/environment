" nerdtree configuration

" function! NERDTreeToggleInCurDir()
"   " If NERDTree is open in the current buffer
"   if (exists("t:NERDTreeBufName") && bufwinnr(t:NERDTreeBufName) != -1)
"     exe ":NERDTreeClose"
"   else
"     if (expand("%:t") != '')
"       exe ":NERDTreeFind"
"     else
"       exe ":NERDTreeToggle"
"     endif
"   endif
" endfunction

nnoremap <silent><F4> :NERDTreeToggle<CR>
nnoremap <silent><F3> :NERDTreeFind<CR>
nnoremap <silent><F4><ESC> :NERDTreeToggle<CR>
nnoremap <silent><Leader>we :NERDTreeToggle<CR>
nnoremap <silent><Leader>wf :NERDTreeFind<CR>

" don't display informations (type ? for help and so on)
let g:NERDTreeMinimalUI = 1
" don't replace the native vim file explorer
let g:NERDTreeHijackNetrw = 1
let g:NERDTreeChDirMode = 2
let g:NERDTreeAutoDeleteBuffer = 1
let g:NERDTreeShowBookmarks = 0
let g:NERDTreeCascadeOpenSingleChildDir = 1
let g:NERDTreeCascadeSingleChildDir = 0
let g:NERDTreeQuitOnOpen = 1
let NERDTreeShowLineNumbers=0

" change the arrows
let NERDTreeDirArrows = 1
"let g:NERDTreeDirArrowExpandable = ''
"let g:NERDTreeDirArrowCollapsible = ''

" remapping - see nerdtree.txt and search for "NERDTreeMappings"
let NERDTreeMapPreview = 'wp'
let NERDTreeMapOpenSplit = 'ws'
let NERDTreeMapPreviewSplit='wsp'

let NERDTreeMapOpenVSplit = 'wv'
let NERDTreeMapPreviewVSplit='wvp'
let g:NERDTreeMouseMode=1
