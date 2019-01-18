set runtimepath+=~/.config/nvim/plugged/ultisnips
let g:UltiSnipsUsePythonVersion = 3
let g:UltiSnipsExpandTrigger="<C-t>"
let g:UltiSnipsJumpForwardTrigger="<C-t>l"
let g:UltiSnipsJumpBackwardTrigger="<C-t>h"

let g:UltiSnipsEditSplit="context"
let g:UltiSnipsSnippetDirectories=[$HOME.'/.config/nvim/UltiSnips']

" Delete in select mode (when tabstopping)
smap <C-d> <Del>
