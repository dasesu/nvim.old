call plug#begin('~/.config/nvim/autoload/plugged')

   " File Explorer en la barra lateral
   Plug 'scrooloose/NERDTree'

   " Auto pairs for '(' '[' '{'
   Plug 'jiangmiao/auto-pairs'

   " If you have nodejs and yarn
   Plug 'iamcco/markdown-preview.nvim'

   " colorized plugin
   Plug 'norcalli/nvim-colorizer.lua'

   " Barra de estados inferior
   Plug 'vim-airline/vim-airline'
   Plug 'vim-airline/vim-airline-themes'

   " Tema 
   Plug 'EdenEast/nightfox.nvim'
   Plug 'joshdick/onedark.vim'

   " Para usar el cursor multiple
   Plug 'mg979/vim-visual-multi', {'branch': 'master'}

   " For interact with registers
   Plug 'gennaro-tedesco/nvim-peekup'

   " Para fzf primero hacer sudo apt install fzf, ripgrep, universal-ctags, silversearcher-ag, fd-finde 
   Plug 'junegunn/fzf', {'do':{ -> fzf#install() }} 
   Plug 'junegunn/fzf.vim'
   "Plug 'airblade/vim-rooter' " Rooter changes the working directory to the project root when you open a file or directory


   "Para el manejo de sesiones, por los momentos estoy usando un sumple mks!
   "Plug 'xolox/vim-misc'
   "Plug 'xolox/vim-session'

   " For Git integration
   Plug 'mhinz/vim-signify' " indicate added, modified and removed lines in a file that is managed by a version control system (VCS)
   Plug 'tpope/vim-fugitive' " is the premier Vim plugin for Git
   Plug 'tpope/vim-rhubarb'
   Plug 'junegunn/gv.vim' " A git commit browser.

   "Floating terminal
   Plug 'voldikss/vim-floaterm'

   " Test transparency
   Plug 'xiyaowong/nvim-transparent'

   " dsa
   Plug 'nvim-treesitter/nvim-treesitter'

   " For native LSP and autocomplete
   Plug 'williamboman/nvim-lsp-installer'
   Plug 'neovim/nvim-lspconfig'
   "Plug 'hrsh7th/nvim-compe' " Deprecated, now use nvim-cmpe

   " This plugin adds indentation guides to all lines (including empty lines).
   Plug 'lukas-reineke/indent-blankline.nvim'

   " For vsnip users.
   Plug 'hrsh7th/vim-vsnip'

call plug#end()


