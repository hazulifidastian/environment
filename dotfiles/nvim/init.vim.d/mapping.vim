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

" Start interactive EasyAlign in visual mode (e.g. vipga)
xmap ga <Plug>(EasyAlign)

" Start interactive EasyAlign for a motion/text object (e.g. gaip)
nmap ga <Plug>(EasyAlign)

" Confirm quit
" cnoremap <silent> q<CR>  :call general#ConfirmQuit(0)<CR>
" cnoremap <silent> x<CR>  :call general#ConfirmQuit(1)<CR>

" ** EndBlock Word ** "

" ** Block Ctrl ** "

" Save file
nnoremap <C-s> :update<CR>
inoremap <C-s> <Esc>:update<CR>

" override default gc
vmap gcc gc<Esc>

" Toggle comment using Ctrl-/
nmap <C-_> gcc
vmap <C-_> gcc<Esc>
imap <C-_> <Esc>gcc i

" ctrl-hjkl keys move windows
nnoremap <C-h> <C-w>h<CR>
nnoremap <C-l> <C-w>l<CR>
nnoremap <C-k> <C-w>k<CR>
nnoremap <C-j> <C-w>j<CR>

" ctrl-alt-hjkl keys resize windows
nmap <C-M-h> :vertical resize -5<CR>
nmap <C-M-l> :vertical resize +5<CR>
nmap <C-M-k> :resize -5<CR>
nmap <C-M-j> :resize +5<CR>

" disable arrow key
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
vmap <Leader>' S'
vmap <Leader>" S"

" * <Leader> ?
map <Leader>? :h<Space>

" * <Leader> # 
nnoremap <Leader>#: gcc
vnoremap <Leader>#: gcc

" * <Leader> b

nnoremap <Leader>bb :Buffers<Cr>
nnoremap <Leader>bs :new<CR>
nnoremap <Leader>b- :new<CR>
nnoremap <Leader>bv :vnew<CR>
nnoremap <Leader>b<bar> :vnew<CR>
nnoremap <Leader>bl :bn<CR>
nnoremap <Leader>bh :bp<CR>
nnoremap <Leader>b# :b#<CR>
nnoremap <Leader>bj :bfirst<CR>
nnoremap <Leader>bk :blast<CR>
nmap <Leader>bx :Bwipeout<cr>
nmap <Leader>bd :bwipeout<cr>
nmap <Leader>bD :bwipeout!<cr>
nmap <Leader>bw :w<cr>
nmap <Leader>bW :w!<cr>
nmap <Leader>bu :update<cr>
nnoremap <Leader>bS :saveas %:h/
nnoremap <Leader>bi 2<C-g>

"Toggle between absolute -> relative line number
nnoremap <Leader>bn :let [&l:nu, &l:rnu]=[1, &l:nu+&l:rnu==1]<CR>
nnoremap <Leader>bN :setlocal nonu nornu<CR>

" * <Leader> f  

" fzf
nnoremap <Leader>fh :History<cr>
nnoremap <Leader>fb :Buffers<cr>
nnoremap <Leader>ff :Files<cr>
nnoremap <Leader>fc :Commands<cr>
nnoremap <Leader>f: :History:<cr>
nnoremap <Leader>f/ :History/<cr>
nnoremap <Leader>fw :Windows<cr>
nnoremap <Leader>fT :Tags<cr>
nnoremap <Leader>ft :BTags<cr>

" * <Leader> h

" * <Leader> p

" project
nnoremap <Leader>pff :Rooter<Cr>:Files<Cr>
nnoremap <Leader>p/ :Rooter<Cr>:Rgic<Space>
nnoremap <Leader>pt :Rooter<Cr>:terminal<Cr> 
nnoremap <Leader>pR :Rooter<Cr>:pwd<Cr>

" projectionist
nnoremap <Leader>pA :A<Cr>
nnoremap <Leader>pas :AS<Cr>
nnoremap <Leader>pav :AV<Cr>

" current working directory
nnoremap <Leader>p. :echo getcwd()<Cr>

" root directory
nnoremap <Leader>pr :echo FindRootDirectory()<Cr>

" * <Leader> s 

nmap <leader>sr <Plug>(FerretAck)
nmap <leader>swr <Plug>(FerretAckWord)
nmap <leader>sR <Plug>(FerretAcks)

" * <Leader> t 

" move tab
nnoremap <Leader>tn :tabnew<CR>
nnoremap <Leader>tl :tabnext<CR>
nnoremap <Leader>th :tabprevious<CR>
nnoremap <Leader>tj :tabfirst<CR>
nnoremap <Leader>tk :tablast<CR>
nnoremap <Leader>tq :tabclose<CR>
nnoremap <Leader>tx :tabclose<CR>
nnoremap <Leader>to :tabonly<CR>
nnoremap <Leader>tt :tabs<CR>:tabn<Space>

nnoremap <Leader>t( 1gt
nnoremap <Leader>t) 2gt
nnoremap <Leader>t} 3gt
nnoremap <Leader>t+ 4gt
nnoremap <Leader>t{ 5gt
nnoremap <Leader>t] 6gt
nnoremap <Leader>t[ 7gt
nnoremap <Leader>t! 8gt
nnoremap <Leader>t= 9gt

" open terminal
" nnoremap <Leader>T. :terminal<Cr>

" * <Leader> v

" open nvim config folder, and search for files
nnoremap <Leader>vc :tabnew<Cr>:lcd ~/Projects/environment/dotfiles/nvim<Cr>:Files<Cr>
nnoremap <silent><Leader>vC :source $MYVIMRC<Cr>

" save and load session
if has('gui_running')
    nnoremap <Leader>vs :mksession! ~/.config/nvim/sessions/gui.vim "SaveSession
    nnoremap <Leader>vS :source ~/.config/nvim/sessions/gui.vim "LoadGUIsession
else
    nnoremap <Leader>vs :mksession! ~/.config/nvim/sessions/terminal.vim<Cr>
    nnoremap <Leader>vS :source ~/.config/nvim/sessions/terminal.vim "LoadTerminalsession
endif

" * <Leader> w

" nnoremap <silent><Leader>we :NERDTreeToggle<CR>
" nnoremap <silent><Leader>wf :NERDTreeFind<CR>

" window
nnoremap <Leader>ws :sp<CR>
nnoremap <Leader>w- :sp<CR>
nnoremap <Leader>wv :vsp<CR>
nnoremap <Leader>w<bar> :vsp<CR>
nnoremap <expr> <Leader>wq &buftype ==# 'terminal' ? ":bd!<Cr>" : "<C-w>q" 
nnoremap <expr> <Leader>wx &buftype ==# 'terminal' ? ":bd!<Cr>" : "<C-w>q" 
nnoremap <Leader>wQ :qa<CR>
nnoremap <Leader>wX :qa<CR>
nnoremap <Leader>we <C-w>=

" focus 
nnoremap <Leader>wk <C-w>k
nnoremap <Leader>wj <C-w>j
nnoremap <Leader>wh <C-w>h
nnoremap <Leader>wl <C-w>l

" move
nnoremap <Leader>wK <C-w>K
nnoremap <Leader>wJ <C-w>J
nnoremap <Leader>wH <C-w>H
nnoremap <Leader>wL <C-w>L

nnoremap <Leader>w( :1wincmd w<Cr>
nnoremap <Leader>w) :2wincmd w<Cr>
nnoremap <Leader>w} :3wincmd w<Cr>
nnoremap <Leader>w+ :4wincmd w<Cr>
nnoremap <Leader>w{ :5wincmd w<Cr>
nnoremap <Leader>w] :6wincmd w<Cr>
nnoremap <Leader>w[ :7wincmd w<Cr>
nnoremap <Leader>w! :8wincmd w<Cr>
nnoremap <Leader>w= :9wincmd w<Cr>

nnoremap <Leader>wu <C-u>
nnoremap <Leader>wd <C-d>
nnoremap <Leader>wt <C-b>
nnoremap <Leader>wb <C-f>

" resize (using winresizer plugin)
nmap <Leader>wwr <Leader>wwl
" focus (using winresizer plugin)
nmap <Leader>wwf <Leader>wwlf
" move (using winresizer plugin)
nmap <Leader>wwm <Leader>wwlm

" maximize
nmap <Leader>wm <C-w>_<C-w><bar>

" nnoremap <Leader>wq <C-w>_<C-w><bar>

" location & quickfix window
nnoremap <silent> <Leader>wn :call general#ToggleList("Location List", 'l')<CR>
nnoremap <silent> <Leader>wc :call general#ToggleList("Quickfix List", 'c')<CR>

" * Shortcut * "
" ------------ "

nnoremap <Leader>k <C-w>k
nnoremap <Leader>j <C-w>j
nnoremap <Leader>h <C-w>h
nnoremap <Leader>l <C-w>l


if !has("nvim")
    " On terminal
    tmap <Esc> <C-w>N
    tmap hh <C-w>N
endif

nnoremap <silent><Leader>E :NERDTreeToggle<CR>
nnoremap <silent><Leader>F :NERDTreeFind<CR>

nmap <Leader>q <Leader>wq 
nmap <Leader>Q <Leader>wQ
nmap <Leader>x <Leader>wq 
nmap <Leader>X <Leader>wQ 
