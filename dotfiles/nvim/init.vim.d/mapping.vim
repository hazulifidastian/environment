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
nnoremap <C-M-Left> :vertical resize -5<CR>
nnoremap <C-M-Right> :vertical resize +5<CR>
nnoremap <C-M-Up> :resize -5<CR>
nnoremap <C-M-Down> :resize +5<CR>
imap <up> <nop>
imap <down> <nop>
imap <left> <nop>
imap <right> <nop>

" Move text shortcut
" this using tpop/unimpaired
" just move one line on normal mode
nmap <C-S-Up> [e
nmap <C-S-Down> ]e
" visual mode, when selected
vmap <C-S-Up> [egv
vmap <C-S-Down> ]egv

"Toggle between absolute -> relative line number
nnoremap <C-n> :let [&nu, &rnu] = [&nu, &nu+&rnu==1]<CR>
nnoremap <C-n>o :set nonu nornu<CR>

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

" open nvim config folder, and search for files
nnoremap <Leader><F5> :cd ~/Projects/environment/dotfiles/nvim<Cr> :Files<Cr>
nnoremap <Leader><F5><F5> :source $MYVIMRC<CR>

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

" * <Leader> b 

" move buffer
nnoremap <Leader>b :bn<CR>
nnoremap <Leader>B :bp<CR>
nnoremap <Leader>b# :b#<CR>
nnoremap <Leader>bf :bfirst<CR>
nnoremap <Leader>bl :blast<CR>
nmap <Leader>bd :bd<cr>
nmap <Leader>bd! :bd!<cr>

" * <Leader> f 

nnoremap <Leader>fh :History<cr>
nnoremap <Leader>fb :Buffers<cr>
nnoremap <Leader>ff :Files<cr>
nnoremap <Leader>fc :Commands<cr>
nnoremap <Leader>f: :History:<cr>
nnoremap <Leader>fs :History/<cr>
nnoremap <Leader>ft :tabs<CR>:tabn<Space>
nnoremap <Leader>fw :Windows<cr>


" * <Leader> h 

" help
nnoremap <Leader>h :h<Space>

" * <Leader> p 

" project
nnoremap <Leader>pf :Rooter<Cr> :Files<Cr>
nnoremap <Leader>p/ :Rooter<Cr> :Rgic<Space>
nnoremap <Leader>p' :Rooter<Cr> :terminal<Cr> 
nnoremap <Leader>pt :Rooter<Cr> :pwd<Cr>

" * <Leader> t 

" move tab
nnoremap <Leader>tn :tabnew<CR>
nnoremap <Leader>t :tabnext<CR>
nnoremap <Leader>T :tabprevious<CR>
nnoremap <Leader>tf :tabfirst<CR>
nnoremap <Leader>tl :tablast<CR>
nnoremap <Leader>tq :tabclose<CR>
nnoremap <Leader>to :tabonly<CR>

" * <Leader> w 

nnoremap <silent><Leader>we :NERDTreeToggle<CR>
nnoremap <silent><Leader>wf :NERDTreeFind<CR>

" window
nnoremap <Leader>ws :sp<CR>
nnoremap <Leader>wv :vsp<CR>
nnoremap <Leader>wq :q<CR>
nnoremap <Leader>wqa :qa<CR>

" location & quickfix window
nnoremap <silent> <Leader>wl :call general#ToggleList("Location List", 'l')<CR>
nnoremap <silent> <Leader>wc :call general#ToggleList("Quickfix List", 'c')<CR>
