" ** Block Misc ** "

" Weird hack for NERDTree to work
let mapLeader = "\\"
map <SPACE> <Leader>

" Move tab
nnoremap <Tab> gt
nnoremap <S-Tab> gT


" ** EndBlock Misc ** "

" ** Block SpecialCharacter

" indent without kill the selection in vmode
vmap < <gv
vmap > >gv

" Visual mode pressing * or # searches for the current selection
" Super useful! From an idea by Michael Naumann
vnoremap <silent> * :<C-u>call general#VisualSelection('', '')<CR>/<C-R>=@/<CR><CR>
vnoremap <silent> # :<C-u>call general#VisualSelection('', '')<CR>?<C-R>=@/<CR><CR>

" Execute a macro for the all selection
xnoremap @ :<C-u>call general#ExecuteMacroOverVisualRange()<CR>


" ** EndBlock SpecialCharacter ** "

" ** Block Word ** "

" Act like D and C
nnoremap Y y$

" remap the annoying u in visual mode
vmap u y

" Change in next bracket
nmap cinb cib

" Keep the cursor in place while joining lines
nnoremap J mzJ`z

" Esc shortcut
imap hh <Esc>

" Confirm quit
" cnoremap <silent> q<CR>  :call general#ConfirmQuit(0)<CR>
" cnoremap <silent> x<CR>  :call general#ConfirmQuit(1)<CR>

" ** EndBlock Word ** "

" ** Block Ctrl ** "

" Save file
nnoremap <C-s> :update<CR>
inoremap <C-s> <Esc>:update<CR>

" override default gc
vmap gcc gc

" Toggle comment using Ctrl-/
nmap <C-_> gcc
vmap <C-_> gcc<Esc>
imap <C-_> <Esc>gcc i

" ctrl-arrow keys move windows
nnoremap <C-Left> <C-w>h<CR>
nnoremap <C-Right> <C-w>l<CR>
nnoremap <C-Up> <C-w>k<CR>
nnoremap <C-Down> <C-w>j<CR>
" ctrl-alt-arrow keys resize windows
nmap <C-M-Left> :vertical resize -5<CR>
nmap <C-M-Right> :vertical resize +5<CR>
nmap <C-M-Up> :resize -5<CR>
nmap <C-M-Down> :resize +5<CR>
" imap <up> <nop>
" imap <down> <nop>
" imap <left> <nop>
" imap <right> <nop>

" Move text shortcut
" this using tpop/unimpaired
" just move one line on normal mode
nmap <C-S-Up> [e
nmap <C-S-Down> ]e
" visual mode, when selected
vmap <C-S-Up> [egv
vmap <C-S-Down> ]egv

"Toggle between absolute -> relative line number
" nnoremap <C-n> :let [&nu, &rnu] = [&nu, &nu+&rnu==1]<CR>
" nnoremap <C-n>o :set nonu nornu<CR>

" delete character after cursor in insert mode
inoremap <C-d> <Del>

" ** EndBlock Ctrl ** "


" Autocompletion with tab
inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"

" * <FunctionKeys> 

" nerdtree
nnoremap <silent><F3> :NERDTreeFind<CR>
nnoremap <silent><F4> :NERDTreeToggle<CR>
nnoremap <silent><F4><ESC> :NERDTreeToggle<CR>

" ** Block Leader ** "

" * <Leader> <FunctionKeys> 


" setup key [1-9] for moving windows, tab, and buffer
for s:i in range(1, 9)
  " <Leader>[1-9] move to window [1-9]
  execute 'nnoremap <Leader>w' . s:i . ' :' . s:i . 'wincmd w<CR>'
  " <Leader><leader>[1-9] move to tab [1-9]
  execute 'nnoremap <Leader>t' . s:i . ' ' . s:i . 'gt'
  " <Leader>b[1-9] move to buffer [1-9]
  execute 'nnoremap <Leader>b' . s:i . ' :b' . s:i . '<CR>'
endfor
unlet s:i

" * <Leader> "' 

" surround by quotes - frequently use cases of vim-surround
map <Leader>" ysiw"<cr>
map <Leader>' ysiw'<cr>

" * <Leader> / 
nnoremap <Leader>_: gcc
vnoremap <Leader>_: gcc

" * <Leader> b (buffer)

" move buffer
nnoremap <Leader>b++ :new<CR>
nnoremap <Leader>b+s :new<CR>
nnoremap <Leader>b+v :vnew<CR>
nnoremap <Leader>bl :bn<CR>
nnoremap <Leader>bh :bp<CR>
nnoremap <Leader>b# :b#<CR>
nnoremap <Leader>bj :bfirst<CR>
nnoremap <Leader>bk :blast<CR>
nmap <Leader>b- :bd<cr>
nmap <Leader>bd :bp<bar>bd #<cr>
nmap <Leader>b!d :bd!<cr>
nmap <Leader>bs :update<cr>
nmap <Leader>b!s :update!<cr>
nmap <Leader>bD :Ball<cr>
nnoremap <Leader>bS :saveas %:h/

" * <Leader> f  (find)

nnoremap <Leader>fh :History<cr>
nnoremap <Leader>fb :Buffers<cr>
nnoremap <Leader>ff :Files<cr>
nnoremap <Leader>fc :Commands<cr>
nnoremap <Leader>f: :History:<cr>
nnoremap <Leader>f/ :History/<cr>
nnoremap <Leader>ft :tabs<CR>:tabn<Space>
nnoremap <Leader>fw :Windows<cr>

nmap <leader>fr <Plug>(FerretAck)
nmap <leader>fwr <Plug>(FerretAckWord)
nmap <leader>fR <Plug>(FerretAcks)

" * <Leader> h (help)

" help
nnoremap <Leader>h :h<Space>

" * <Leader> p (project)

" project
nnoremap <Leader>pf :Rooter<Cr>:Files<Cr>
nnoremap <Leader>p/ :Rooter<Cr>:Rgic<Space>
nnoremap <Leader>p' :Rooter<Cr>:terminal<Cr> 
nnoremap <Leader>pR :Rooter<Cr>:pwd<Cr>
nnoremap <Leader>pA :A<Cr>

" * <Leader> t 

" move tab
nnoremap <Leader>t+ :tabnew<CR>
nnoremap <Leader>tl :tabnext<CR>
nnoremap <Leader>th :tabprevious<CR>
nnoremap <Leader>tj :tabfirst<CR>
nnoremap <Leader>tk :tablast<CR>
nnoremap <Leader>t- :tabclose<CR>
nnoremap <Leader>tq :tabclose<CR>
nnoremap <Leader>to :tabonly<CR>


" * <Leader> v (vim)

" open nvim config folder, and search for files
nnoremap <Leader>vc :tabnew<Cr>:lcd ~/Projects/environment/dotfiles/nvim<Cr>:Files<Cr>
nnoremap <silent><Leader>vC :source $MYVIMRC<CR>

" save and load session
if has('gui_running')
    nnoremap <Leader>vs :mksession! ~/.config/nvim/sessions/gui.vim<Cr>
    nnoremap <silent><Leader>vS :source ~/.config/nvim/sessions/gui.vim<Cr>
else
    nnoremap <Leader>vs :mksession! ~/.config/nvim/sessions/terminal.vim<Cr>
    nnoremap <silent><Leader>vS :source ~/.config/nvim/sessions/terminal.vim<Cr>
endif

" * <Leader> w  (window)

nnoremap <silent><Leader>we :NERDTreeToggle<CR>
nnoremap <silent><Leader>wf :NERDTreeFind<CR>

" window
nnoremap <Leader>ws :sp<CR>
nnoremap <Leader>wv :vsp<CR>
nnoremap <Leader>wq :q<CR>
nnoremap <Leader>wQ :qa<CR>
nnoremap <Leader>w= <C-w>=

" focus 
nnoremap <Leader>wk <C-w>k
nnoremap <Leader>wj <C-w>j
nnoremap <Leader>wh <C-w>h
nnoremap <Leader>wl <C-w>l

" resize (using winresizer plugin)
nmap <Leader>wwr <Leader>wwl
" focus (using winresizer plugin)
nmap <Leader>wwf <Leader>wwlf
" move (using winresizer plugin)
nmap <Leader>wwm <Leader>wwlm

" maximize
nmap <Leader>wm <C-w>_<C-w><bar>

" location & quickfix window
nnoremap <silent> <Leader>wol :call general#ToggleList("Location List", 'l')<CR>
nnoremap <silent> <Leader>woc :call general#ToggleList("Quickfix List", 'c')<CR>
