set nocompatible
set backspace=2
set encoding=utf-8
set fileencoding=utf-8
filetype off

let $LANG='en'
set langmenu=none
set tabstop=4
set softtabstop=4
set expandtab
set shiftwidth=4
set smartindent
set smartcase
set ignorecase
set incsearch
set noswapfile
set nowrap
set number 
set relativenumber
set iskeyword+=-
set splitbelow
set splitright
set hlsearch
set noerrorbells
set scrolloff=10
set hidden
set path+=**
set t_Co=256
set background=dark

call plug#begin('~/.local/share/nvim/site/autoload')
Plug 'tpope/vim-surround'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-fugitive'
Plug 'mogelbrod/vim-jsonpath'
Plug 'nvim-lualine/lualine.nvim'
Plug 'kyazdani42/nvim-web-devicons'
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

colorscheme gruvbox
syntax enable

" source settings files
source ~/.config/nvim/mappings.vim
source ~/.config/nvim/coc.vim
source ~/.config/nvim/nerdtree.vim
source ~/.config/nvim/telescope.vim
source ~/.config/nvim/airline.vim

" lua init settings
:lua require('kevin')

let g:vimspector_enable_mappings = 'VISUAL_STUDIO'
au! BufWritePost $MYVIMRC source %      " auto source when writing to init.vm alternatively you can run :source $MYVIMRC

" fzf settings
" This is the default extra key bindings
let g:fzf_action = {
            \ 'ctrl-t': 'tab split',
            \ 'ctrl-x': 'split',
            \ 'ctrl-v': 'vsplit' }

" Default fzf layout
" - down / up / left / right
let g:fzf_layout = { 'down': '~40%' }

" Customize fzf colors to match your color scheme
let g:fzf_colors =
            \ { 'fg':      ['fg', 'Normal'],
            \ 'bg':      ['bg', 'Normal'],
            \ 'hl':      ['fg', 'Comment'],
            \ 'fg+':     ['fg', 'CursorLine', 'CursorColumn', 'Normal'],
            \ 'bg+':     ['bg', 'CursorLine', 'CursorColumn'],
            \ 'hl+':     ['fg', 'Statement'],
            \ 'info':    ['fg', 'PreProc'],
            \ 'prompt':  ['fg', 'Conditional'],
            \ 'pointer': ['fg', 'Exception'],
            \ 'marker':  ['fg', 'Keyword'],
            \ 'spinner': ['fg', 'Label'],
            \ 'header':  ['fg', 'Comment'] }

" Enable per-command history.
" CTRL-N and CTRL-P will be automatically bound to next-history and
" previous-history instead of down and up. If you don't like the change,
" explicitly bind the keys to down and up in your $FZF_DEFAULT_OPTS.
let g:fzf_history_dir = '~/.local/share/fzf-history'
