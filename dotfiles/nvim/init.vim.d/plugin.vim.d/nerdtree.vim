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

" remapping - see nerdtree.txt and search for "NERDTreeMappings"
let NERDTreeMapPreview = 'p'
let NERDTreeMapOpenSplit = 's'
let NERDTreeMapPreviewSplit='sp'

let NERDTreeMapOpenVSplit = 'v'
let NERDTreeMapPreviewVSplit='vp'
let g:NERDTreeMouseMode=1
