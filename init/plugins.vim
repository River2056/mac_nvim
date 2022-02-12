call plug#begin('~/.local/share/nvim/site/autoload')
Plug 'tpope/vim-surround'
Plug 'AndrewRadev/tagalong.vim'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-fugitive'
Plug 'mogelbrod/vim-jsonpath'
Plug 'nvim-lualine/lualine.nvim'
Plug 'kyazdani42/nvim-web-devicons'
Plug 'ryanoasis/vim-devicons'
Plug 'ThePrimeagen/harpoon'
Plug 'morhetz/gruvbox'
Plug 'tomasiser/vim-code-dark'
Plug 'lunarvim/darkplus.nvim'
Plug 'puremourning/vimspector'
Plug 'preservim/nerdtree'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' } 
Plug 'junegunn/fzf.vim'
call plug#end()
