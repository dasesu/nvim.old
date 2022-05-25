syntax enable                 " Enable syntax highlighing
"set hidden                    " Requered to keep multiple buffers open
set mouse=a                   " mouse modes: a, v or r for remove
set encoding=utf-8            " the encoding displayed  
set pumheight=10              " Make the popup menu smaller
set fileencoding=utf-8        " The encodign written to file	   
set ruler                     " show the position of the cursor all the time 
set cmdheight=2               " More space for display messages
set splitbelow                " Horizontal split will automatically be bellow
set splitright                " Vertical split will automatically be to the right
set t_Co=256                  " 
set conceallevel=0            " So thatIcan see in markdown files
set tabstop=2                 " Insert 2 spaces for a tab
set shiftwidth=2              " Change the number of space characters inserted for indentation
"set smarttab                  " Makes tabbing smarter will realize you have 2 vs 4
set expandtab                 " Converts tabs to spaces    
set smartindent               "							
set autoindent                " 
set laststatus=0              " Always display the status line
set number                    " Show line number
"set relativenumber
"set cursorline                " 
set showtabline=2             " always show tabs
set showmatch                 " nos muestra donde terminan parentesis
set noshowmode                " no need to see the current mode INSERT
set nobackup                  " recommended by coc
set nowritebackup             " recommended by coc
set updatetime=300            " faster completition
set timeoutlen=600            " this is set by default in 1000 
" set formatoptions-=cro        " Stop newline continution of comments
set clipboard=unnamedplus     " Copy paste between vin and everything else

set colorcolumn=80            " Linea limite a 80 espacios
set foldcolumn=4              " Margen del lado izquierdo para centrar mas el codigo
set termguicolors             " required for enabled colorized

" Configuraciones de NERDTree
let g:indent_guides_auto_colors=0
let NERDTreeWinSize = 20


" Theme por defecto usa el plug de nightfox
colorscheme nordfox

" additional setup for norcalli
lua require 'colorizer'.setup()

" Configuraciones de airline
let g:airline#extensions#whitespace#enabled = 0 " Esto oculta el campo 
let g:airline_theme='base16_shell'

