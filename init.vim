
set mouse=a	" other modes: v or r for remove
set number	" muestra numeros de linea
"sett relativenumber	

" unnamed permite usar el 
" clipboard del sistema en lugar de los varios
" clipboards internos de vim
" las siguientes lineas redefinen los atajos 
" para copiar cortar y pegar usados normalmente
set clipboard=unnamedplus
vmap <C-c> "+yi
vmap <C-x> "+c
vmap <C-v> c<ESC>"+p
imap <C-v> <C-r><C-o>+


syntax enable
set encoding=utf-8
set showmatch          " nos muestra donde terminan parentesis
set tabstop=3          " Size of a hard tabstop (ts).
set shiftwidth=3       " Size of an indentation (sw).
set expandtab          " Always uses spaces instead of tab characters (et).
set softtabstop=0      " Number of spaces a <Tab> counts for. When 0, featuer is off (sts).
set autoindent         " Copy indent from current line when starting a new line.
set smarttab           " Inserts blanks on a <Tab> key (as per sw, ts and sts).

"Better tabbing
vnoremap < <gv
vnoremap > >gv

set termguicolors      " para poder habilitar colorized 

set colorcolumn=80   " Linea limite a 80 espacios
set foldcolumn=4     " Margen del lado izquierdo para centrar mas el codigo

let g:indent_guides_auto_colors=0

call plug#begin('~/AppData/Local/nvim/plugged')
" Plugin para abrir el arbol de archivos lateral
Plug 'preservim/nerdtree'

" un tema
Plug 'EdenEast/nightfox.nvim'

" Para mostrar la linea punteada al indentar
Plug 'lukas-reineke/indent-blankline.nvim'

"Para usar el cursor multiple
Plug 'mg979/vim-visual-multi', {'branch': 'master'}

" Barra de estados inferior
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

"colorized plugin
Plug 'norcalli/nvim-colorizer.lua'

Plug 'mhinz/vim-signify'
Plug 'tpope/vim-fugitive'
"Plug 'tpope/vim-rhubarb'
"Plug 'junegunn/gv.vim'

" permite mostrar las paginas markdown en el navegador incluidos fragmentos
" mermaid
Plug 'iamcco/markdown-preview.nvim'

" iconos

call plug#end() 

" additional setup for norcalli
lua require 'colorizer'.setup()


" Theme por defecto usa el plug de nightfox
colorscheme nordfox


" Configuraciones adicionales para Airline, 
" para que muestre correctamente ciertos caracteres
" powerline symbols

" air-line
let g:airline_powerline_fonts = 1
set t_Co=256
"set guifont=Source\ Code\ Pro\ for\ Powerline:h15:cANSI

if !exists('g:airline_symbols')
   let g:airline_symbols = {}
endif

" unicode symbols
let g:airline_left_sep = '»'
let g:airline_left_sep = '▶'
let g:airline_right_sep = '«'
let g:airline_right_sep = '◀'
let g:airline_symbols.linenr = 'L:'
let g:airline_symbols.linenr = ' :'
let g:airline_symbols.linenr = '¶'
let g:airline_symbols.branch = 'B'
let g:airline_symbols.paste = 'ρ'
let g:airline_symbols.paste = 'Þ'
let g:airline_symbols.paste = '||'
let g:airline_symbols.whitespace = 'Ξ'

" airline symbols
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = ' :'

" enable tabline
let g:airline#extensions#tabline#enabled=1
let g:airline#extensions#tabline#left_sep = '»'
let g:airline#extensions#tabline#left_sep = ''

"
let g:airline#extensions#tabline#left_alt_sep = ''
let g:airline#extensions#tabline#right_sep = ''
let g:airline#extensions#tabline#right_alt_sep = ''

let g:airline#extensions#whitespace#enabled = 0 " Esto oculta el campo 

let g:airline_theme='base16_shell'
" Always show tabs
set showtabline=2
" we don't need to see things like INSERT anynore
"set noshowmode


" Barra de archivos lateral, configurada para abrirse y cerrarse con Control E
let NERDTreeWinSize = 20
nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-e> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>


" Identacion con tab y identacion hacia atras con shift tab 
nnoremap <Tab> >>_
nnoremap <S-Tab> <<_
inoremap <S-Tab> <C-D>
vnoremap <Tab> >gv
vnoremap <S-Tab> <gv


" move among buffers with CTRL
map <C-J> :bnext<CR>
map <C-K> :bprev<CR>
nnoremap <Leader>b :ls<CR>:b<Space>
nnoremap <Leader>1 :b 1<CR>
nnoremap <Leader>2 :b 2<CR>
nnoremap <Leader>3 :b 3<CR>
nnoremap <Leader>4 :b 4<CR>
nnoremap <Leader>5 :b 5<CR>
nnoremap <Leader>6 :b 6<CR>
