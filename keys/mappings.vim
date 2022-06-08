" map es recursivo quiere decir que si como resultado de un mapeado hay la
" entrada a otro map entonces continuara con el siguiente hasta terminar su
" flujo 
" noremap no es recursivo.
"
"    n: normal only
"    v: visual and select
"    o: operator-pending
"    x: visual only
"    s: select only
"    i: insert
"    c: command-line
"    l: insert, command-line, regexp-search (and others. Collectively called "Lang-Arg" pseudo-mode)


"Copiar, cortar y pegar
vmap <C-c> "+yi
vmap <C-x> "+c
vmap <C-v> c<ESC>"+p
imap <C-v> <C-r><C-o>+


" Para salvar con Ctrl s, aunque estoy mas acostumbrado a hacer :w
nnoremap <C-s> :w<CR>


" Better tabbing
vnoremap < <gv
vnoremap > >gv


" Identacion con tab y identacion hacia atras con shift tab 
nnoremap <Tab> >>_
nnoremap <S-Tab> <<_
inoremap <S-Tab> <C-D>
vnoremap <Tab> >gv
vnoremap <S-Tab> <gv


" move among buffers with CTRL
map <C-J> :bnext<CR>
map <C-K> :bprev<CR>


" Para la naegacion entre buffers 
nnoremap <Leader>b :ls<CR>:b<Space>
nnoremap <Leader>1 :b 1<CR>
nnoremap <Leader>2 :b 2<CR>
nnoremap <Leader>3 :b 3<CR>
nnoremap <Leader>4 :b 4<CR>
nnoremap <Leader>5 :b 5<CR>
nnoremap <Leader>7 :b 7<CR>
nnoremap <Leader>8 :b 8<CR>
nnoremap <Leader>9 :b 9<CR>


nnoremap <C-e> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>


"nnoremap <Leader>l :!ls<CR>:b<Space>

"PAra seleccionar todo
map <C-a> :0<CR> v GG<CR>



map <C-f> :Files<CR>
map <leader>b :Buffers<CR>
nnoremap <leader>f :FZF<CR>
nnoremap <leader>l :BLines<CR>
"nnoremap <leader>g :Rg<CR>
nnoremap <leader>t :Tags<CR>
nnoremap <leader>m :Marks<CR>
 
 

" Para el manejo de sesiones
" Para salvar sesiones
" :mks! my-session.vim
" o tambien
" :mksession
" Recuperar sesion 
" :source ~/Session.vim
" o tambien\
" vim -S my-session.vim
map <leader>z :mks! ~/vim-sessions/Session.vim<CR>
"map <leader>z1 :mks! ~/vim-sessions/Session1.vim<CR>
"map <leader>z2 :mks! ~/vim-sessions/Session2.vim<CR>
"map <leader>z3 :mks! ~/vim-sessions/Session3.vim<CR>

map <leader>o :so ~/vim-sessions/Session.vim<CR>
"map <leader>o1 :so ~/vim-sessions/Session1.vim<CR>
"map <leader>o2 :so ~/vim-sessions/Session2.vim<CR>
"map <leader>o3 :so ~/vim-sessions/Session3.vim<CR>

map <leader>d :!rm ~/vim-sessions/Session.vim<CR>
"map <leader>d1 :!rm ~/vim-sessions/Session1.vim<CR>
"map <leader>d2 :!rm ~/vim-sessions/Session2.vim<CR>
"map <leader>d3 :!rm ~/vim-sessions/Session3.vim<CR>


