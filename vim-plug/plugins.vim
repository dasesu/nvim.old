call plug#begin('~/.config/nvim/autoload/plugged')

	" File Explorer en la barra lateral
	Plug 'scrooloose/NERDTree'

	" Auto pairs for '(' '[' '{'
	Plug 'jiangmiao/auto-pairs'

  " permite mostrar las paginas markdown en el navegador incluidos fragmentos
  " mermaid
  
  
  " If you have nodejs and yarn
  Plug 'iamcco/markdown-preview.nvim'

  "colorized plugin
  Plug 'norcalli/nvim-colorizer.lua'

  " Barra de estados inferior
  Plug 'vim-airline/vim-airline'
  Plug 'vim-airline/vim-airline-themes'

  " Tema 
  Plug 'EdenEast/nightfox.nvim'
  Plug 'joshdick/onedark.vim'

  "Para usar el cursor multiple
  Plug 'mg979/vim-visual-multi', {'branch': 'master'}

  " For interact with registers
  Plug 'gennaro-tedesco/nvim-peekup'

  " Para fzf 
  " installar fzf, ripgrep, universal-ctags, silversearcher-ag, fd-finde 
  " con:  sudo apt get install XXX
  Plug 'junegunn/fzf', {'do':{ -> fzf#install() }}
  Plug 'junegunn/fzf.vim'
  "Plug 'airblade/vim-rooter'

  "Para el manejo de sesiones, por los momentos estoy usando un sumple mks!
  "Plug 'xolox/vim-misc'
  "Plug 'xolox/vim-session'
  
  Plug 'mhinz/vim-signify'
  Plug 'tpope/vim-fugitive'
  Plug 'tpope/vim-rhubarb'
  Plug 'junegunn/gv.vim'

  "Floating terminal
  Plug 'voldikss/vim-floaterm'

  " Test transparency
  Plug 'xiyaowong/nvim-transparent'


  call plug#end()


