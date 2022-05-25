call plug#begin('~/.config/nvim/autoload/plugged')

	" File Explorer
	Plug 'scrooloose/NERDTree'

	" Auto pairs for '(' '[' '{'
	Plug 'jiangmiao/auto-pairs'

  " permite mostrar las paginas markdown en el navegador incluidos fragmentos
  " mermaid
  Plug 'iamcco/markdown-preview.nvim'

  "colorized plugin
  Plug 'norcalli/nvim-colorizer.lua'

  " Barra de estados inferior
  Plug 'vim-airline/vim-airline'
  Plug 'vim-airline/vim-airline-themes'

  " Tema 
  Plug 'EdenEast/nightfox.nvim'

  "Para usar el cursor multiple
  Plug 'mg979/vim-visual-multi', {'branch': 'master'}

call plug#end()

