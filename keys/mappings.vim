
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


" show and hide NERDTree
nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-e> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>


"nnoremap <Leader>l :!ls<CR>:b<Space>

