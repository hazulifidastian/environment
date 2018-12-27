set runtimepath+=~/.config/nvim/plugged/ultisnips
let g:UltiSnipsUsePythonVersion = 3
let g:UltiSnipsExpandTrigger="<C-e>"
let g:UltiSnipsJumpForwardTrigger="<C-j>"
let g:UltiSnipsJumpBackwardTrigger="<C-k>"

let g:UltiSnipsEditSplit="tabdo"
let g:UltiSnipsDirectories=[$HOME.'/.config/nvim/UltiSnips']

" Delete in select mode (when tabstopping)
smap <C-d> <Del>
