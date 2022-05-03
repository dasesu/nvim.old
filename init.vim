
set mouse=a	" other modes: v or r for remove
set number	" muestra numeros de linea
"sett relativenumber	

" unnamed permite usar el 
" clipboard del sistema en lugar de los varios
" clipboards internos de vim
" las siguientes lineas redefinen los atajos 
" para copiar cortar y pegar usados normalmente
set clipboard=unnamed
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

call plug#end() 

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

let g:airline_theme='base16_shell'

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

